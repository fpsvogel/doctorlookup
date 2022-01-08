# Stores information on an individual health care provider from an API response.
class Result
  include ActiveModel::Model
  include ActiveModel::Attributes

  string_attributes =
    %i[first_name
       last_name
       credential
       primary_specialty
       gender
       address_1
       address_2
       city
       state
       phone_number
     ]
  titleized_string_attributes = %i[first_name last_name address_1 address_2 city]
  optional_string_attributes = %i[credential address_2]

  string_attributes.each do |attr|
    attribute attr, :string
    validates(attr, presence: true) unless optional_string_attributes.include?(attr)
  end

  titleized_string_attributes.each do |attr|
    define_method "#{attr}=" do |new_value|
      new_value = titleize(new_value)
      write_attribute(attr, new_value)
    end
  end

  attribute :other_specialties, array: true, default: []
  attribute :npi_number, :integer

  # Calls the API.
  # @param [Hash] response the full API response in JSON format
  # @return [Array<Result>] relevant information from each result in the response
  def self.array_from_api_response(response)
    return [] unless response && response.has_key?("results")
    response["results"].map do |result|
      location_address = result["addresses"].find do |address|
        address["address_purpose"] == "LOCATION"
      end
      primary_specialty, other_specialties = parse_specialties(result["taxonomies"])
      new(
        first_name: result["basic"]["first_name"],
        last_name: result["basic"]["last_name"],
        credential: result["basic"]["credential"],
        gender: result["basic"]["gender"],
        primary_specialty:,
        other_specialties:,
        address_1: location_address["address_1"],
        address_2: location_address["address_2"],
        city: location_address["city"],
        state: location_address["state"],
        phone_number: location_address["telephone_number"])
    end
  end

  def credential=(new_credential)
    new_credential = new_credential&.gsub(/,(?=\S)/, ", ")
    write_attribute(:credential, new_credential)
  end

  private

  private_class_method def self.parse_specialties(raw_taxonomies)
    # create a hash to remove duplicate taxonomies (having the same description)
    desc_and_primary = raw_taxonomies.map do |taxonomy|
      [taxonomy["desc"], taxonomy["primary"]]
    end.each_with_object({}) do |(desc, primary), hash|
      hash[desc] = primary unless hash[desc] == true
    end
    primary = desc_and_primary.find { |desc, primary| primary == true } \
              || desc_and_primary.first
    debugger if primary.nil?
    primary_description = primary.first # the key
    others = desc_and_primary.except(primary_description)
    other_descriptions = others.keys
    [primary_description, other_descriptions]
  end

  # similar to ActiveSupport::Inflector.titleize(string)
  def titleize(string)
    return nil if string.nil?
    string.split(" ").map(&:capitalize).join(" ")
  end

  # mimics ActiveRecord's write_attribute method
  def write_attribute(attr_name, value)
    @attributes[attr_name.to_s] = @attributes[attr_name.to_s]
                                    .with_value_from_user(value)
  end
end