# Stores an address taken from an API response.
class Address
  include ActiveModel::Model
  include ActiveModel::Attributes
  include StringAttributes

  add_string_attributes(
    required: [:line_1,
               :city,
               :state],
    optional: [:line_2])
  define_titleizing_setters([:line_1, :line_2, :city])
  attribute :phone_numbers, array: true, default: []

  # Makes Addresses from an API response.
  # @param [Hash] response_result a raw result from an API response in JSON format
  # @return [Array<Address>] addresses from each result in the response
  def self.addresses_from_api_result(response_result, query)
    return [] unless response_result
    main_location = response_result["addresses"].find do |address|
      address["address_purpose"] == "LOCATION"
    end
    practice_locations = response_result["practiceLocations"] || []
    ([main_location] + practice_locations).map do |location|
      city, state = location["city"], location["state"]
      next unless city_and_state_match_if_present(city, state, query)
      new(
        line_1: location["address_1"],
        line_2: location["address_2"],
        city:,
        state:,
        phone_numbers: [location["telephone_number"]])
    end.compact.then do |addresses|
      merge_duplicates(addresses)
    end
  end

  def line_1=(new_line_1)
    new_line_1 = titleize(new_line_1)&.gsub(/[\.,]/, "")
    write_attribute(:line_1, new_line_1)
  end

  def line_2=(new_line_2)
    new_line_2 = titleize(new_line_2)&.gsub(/[\.,]/, "")
    write_attribute(:line_2, new_line_2)
  end

  private_class_method def self.city_and_state_match_if_present(city, state, query)
    (city.downcase == query.city&.downcase) == (query.city.present?) &&
      (state.downcase == query.state&.downcase) == (query.state.present?)
  end

  private_class_method def self.merge_duplicates(addresses)
    unique_address_groups = addresses.group_by do |address|
      first_3_words = address.line_1.split.take(3).join(" ")
      [first_3_words, address.city, address.state]
    end
    duplicate_groups = unique_address_groups.values.select { |addresses| addresses.count > 1 }
    duplicate_groups.each do |duplicates|
      address_to_keep = duplicates.max_by do |address|
        [address.line_2&.length ||0, address.line_1.length]
      end
      addresses_to_discard = duplicates - [address_to_keep]
      addresses_to_discard.each do |to_discard|
        unless address_to_keep.phone_numbers.include?(to_discard.phone_numbers.first)
          address_to_keep.phone_numbers << to_discard.phone_numbers.first
        end
        addresses = addresses - [to_discard]
      end
    end
    addresses
  end
end