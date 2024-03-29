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
  attribute :npi_number, :integer

  # Makes Results from an API response.
  # @param [Hash] response the full API response in JSON format
  # @return [Array<Result>] relevant information from each result in the response
  def self.results_from_api_response(response, query)
    raise Exceptions::NoResultsFound unless response && response.has_key?("results")
    raw_results = response["results"].drop(query.stopping_point)
    new_results =
      raw_results.map do |result|
        gender = result["basic"]["gender"]
        next unless gender_match?(gender, query)
        next unless individual?(result)
        primary_specialty, other_specialties = parse_specialties(result["taxonomies"])
        next unless specialty_match?(primary_specialty, other_specialties, query)
        new(
          first_name: result["basic"]["first_name"],
          last_name: result["basic"]["last_name"],
          credential: result["basic"]["credential"],
          gender:,
          npi_number: result["number"],
          primary_specialty:,
          other_specialties:,
          addresses: Address.addresses_from_api_result(result, query))
      end.compact
    [new_results, reached_end?(response, query)]
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
    end.map do |desc, _primary|
      NpiTaxonomyDescriptions.parenthesize(desc)
    end.each_with_object({}) do |(desc, primary), hash|
      hash[desc] = primary unless hash[desc] == true
    end
    primary = desc_and_primary.find { |desc, primary| primary == true } \
              || desc_and_primary.first
    primary_description = primary.first # the key
    others = desc_and_primary.except(primary_description)
    other_descriptions = others.keys
    other_descriptions&.select! do |other|
      !primary_description.include? other
    end
    [primary_description, other_descriptions || []]
  end

  private_class_method def self.reached_end?(response, query)
    return true if response["results"].count < query.limit
    false
  end

  private_class_method def self.gender_match?(gender, query)
    query.gender.nil? || gender.downcase == query.gender.downcase
  end

  # Whether the result represents an individual provider (not an organization)
  private_class_method def self.individual?(result)
    result["enumeration_type"] == "NPI-1"
  end

  private_class_method def self.specialty_match?(primary_specialty,
                                                 other_specialties, query)
    !query.taxonomy_description_has_specialization? ||
      ([primary_specialty] + other_specialties).include?(
                                      query.parenthesized_taxonomy_description)
  end
end