# Stores details of an individual health care provider, taken from an API response.
class Result
  include ActiveModel::Model
  include ActiveModel::Attributes
  include StringAttributes

  add_string_attributes(
    required: [:first_name,
               :last_name,
               :primary_specialty,
               :gender],
    optional: [:credential])
  define_titleizing_setters([:first_name, :last_name])
  attribute :other_specialties, array: true, default: []
  attribute :addresses, array: true, default: []
  attribute :npi_number, :integer # TODO show

  # Makes Results from an API response.
  # @param [Hash] response the full API response in JSON format
  # @return [Array<Result>] relevant information from each result in the response
  def self.results_from_api_response(response, query)
    return [] unless response && response.has_key?("results")
    response["results"].map do |result|
      gender = result["basic"]["gender"]
      # next unless gender.downcase == query.gender.downcase # TODO
      primary_specialty, other_specialties = parse_specialties(result["taxonomies"])
      new(
        first_name: result["basic"]["first_name"],
        last_name: result["basic"]["last_name"],
        credential: result["basic"]["credential"],
        gender:,
        primary_specialty:,
        other_specialties:,
        addresses: Address.addresses_from_api_result(result, query))
    end#.compact
  end

  def credential=(new_credential)
    new_credential = new_credential&.gsub(/,(?=\S)/, ", ")
    write_attribute(:credential, new_credential)
  end

  private

  # # similar to ActiveSupport::Inflector.titleize(string)
  # def titleize(string)
  #   return nil if string.nil?
  #   string.split(" ").map(&:capitalize).join(" ")
  # end

  # # mimics ActiveRecord's write_attribute method
  # def write_attribute(attr_name, value)
  #   @attributes[attr_name.to_s] = @attributes[attr_name.to_s]
  #                                   .with_value_from_user(value)
  # end

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
end