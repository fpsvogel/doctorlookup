class Result
  include ActiveModel::Model
  include ActiveModel::Attributes

  string_attributes =
    %i[first_name
       last_name
       credential
       gender
       primary_specialty
       address_1
       address_2
       city
       state
       phone_number
     ]
  optional_string_attributes = %i[credential address_2]

  string_attributes.each do |attr|
    attribute attr, :string
    validates(attr, presence: true) unless optional_string_attributes.include?(attr)
  end

  attribute :other_specialties, array: true, default: []
  attribute :npi_number, :integer

  def self.array_from_api_response(response)
    return [] unless response && response.has_key?("results")
    response["results"].map do |result|
      location_address = result["addresses"].find do |address|
        address["address_purpose"] == "LOCATION"
      end
      new(first_name: result["basic"]["first_name"],
          last_name: result["basic"]["last_name"],
          credential: result["basic"]["credential"],
          gender: result["basic"]["gender"],
          primary_specialty:
            result["taxonomies"].find { |taxonomy| taxonomy["primary"] == true }
                                .dig("desc"),
          other_specialties:
            result["taxonomies"].select { |taxonomy| taxonomy["primary"] == false }
                                .map { |taxonomy| taxonomy["desc"] },
          address_1: location_address["address_1"],
          address_2: location_address["address_2"].presence,
          city: location_address["city"],
          state: location_address["state"],
          phone_number: location_address["telephone_number"])
    end
  end
end