require "open-uri"
require "json"

# Queries the NPI API.
class Query
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ReadWriteAttribute

  RESULTS_INCREMENT = 10
  GENDER_INCREMENT_MULTIPLIER = 3 # to reduce the need for repeated API calls.
  TAXONOMIES_TEST_LIMIT_MULTIPLIER = 20 # also to minimize API calls.

  # see https://npiregistry.cms.hhs.gov/registry/help-api
  # "&enumeration_type=NPI-1" means that only individuals are returned, not
  # organizations (NPI-2), which have a different JSON response structure and
  # would require an OrganizationResult model.
  API_URL = "https://npiregistry.cms.hhs.gov/api/?number=&enumeration_type=NPI-1&taxonomy_description=&first_name=&use_first_name_alias=&last_name=&organization_name=&address_purpose=&city=&state=&postal_code=&country_code=&limit=&skip=&version=2.1"

  API_PARAM_ATTRIBUTES =
    %i[taxonomy_description
       state
       city
       first_name
       last_name
       limit]

  attribute :taxonomy_description, :string
  attribute :state,          :string
  attribute :city,           :string
  attribute :first_name,     :string
  attribute :last_name,      :string
  attribute :gender,         :string
  attribute :stopping_point, :integer, default: 0
  attribute :effective_taxonomy_attr, :string
  attr_reader :limit

  validate :any_param_besides_state_is_present

  # Calls the API.
  # @return [Array<Result>] relevant information from each result in the response
  def results
    @limit = stopping_point + gender_adjusted_results_increment
    results_batch = []
    first_try = (stopping_point == 0)
    while results_batch.count < RESULTS_INCREMENT
      url = api_url_with_params
      response = JSON.load(URI.open(url))
      new_results, reached_end = Result.results_from_api_response(response, self)
      results_batch += new_results
      self.stopping_point = @limit
      break if reached_end
      @limit = stopping_point + gender_adjusted_results_increment
    end
    raise Exceptions::NoResultsFound if first_try && results_batch.count == 0
    results_batch
  end

  # @return [Array<String>] a list of all NPI taxonomy descriptions
  def taxonomy_descriptions
    NpiTaxonomyDescriptions::ALL
  end

  # @return [Array<Array<String>>] pairs of U.S. state names and abbreviations
  def states
    UsaStates::ALL
  end

  def gender=(new_gender)
    new_gender = nil if new_gender.downcase == "any"
    write_attribute(:gender, new_gender)
  end

  # @return [Boolean] whether the taxonomy description (specialty) has a
  # specialization, as in "Social Worker -- Clinical".
  def taxonomy_description_has_specialization?
    taxonomy_description.include? NpiTaxonomyDescriptions::SEPARATOR
  end

  # @return [String] the taxonomy description (specialty) with the
  # specialization in parentheses instead of after hyphens.
  def parenthesized_taxonomy_description
    NpiTaxonomyDescriptions.parenthesize(joined_taxonomy_description)
  end

  private

  def any_param_besides_state_is_present
    others = API_PARAM_ATTRIBUTES - [:state]
    others_blank = others.all? { |attr| send(attr).blank? }
    if others_blank
      errors.add :base, "Please specify at least one parameter besides State and Gender."
    end
  end

  def gender_adjusted_results_increment
    increment = RESULTS_INCREMENT
    increment *= GENDER_INCREMENT_MULTIPLIER if gender
    increment
  end

  def api_url_with_params(taxonomy_attr: :effective_taxonomy_description,
                          taxonomy_preliminary_higher_limit: false)
    url = API_URL
    (API_PARAM_ATTRIBUTES - [:taxonomy_description]).each do |attr|
      url = insert_into_url(url, attr)
    end
    url = insert_into_url(url, :taxonomy_description,
                          attr_value: send(taxonomy_attr) || taxonomy_description)
    if taxonomy_preliminary_higher_limit
      url = insert_into_url(url, :limit,
                            attr_value: taxonomy_preliminary_higher_limit)
    end
    url
  end

  def insert_into_url(url, param, attr_value: send(param))
    if attr_value.present?
      return url.sub("&#{param}=", "&#{param}=#{attr_value.to_s.gsub("&", "%26")}")
    end
    url
  end

  def effective_taxonomy_description
    return send(effective_taxonomy_attr) unless effective_taxonomy_attr.nil?
    return nil unless taxonomy_description_has_specialization?
    self.effective_taxonomy_attr = taxonomy_preliminary_contest_winner
    send(effective_taxonomy_attr)
  end

  def taxonomy_preliminary_contest_winner
    matches = {}
    [:classification, :specialization].each do |taxonomy_attr|
      matches[taxonomy_attr] = taxonomy_preliminary_request(taxonomy_attr)
                                .to_s.scan("\"#{joined_taxonomy_description}\"").count
    end
    matches.max_by { |_attr, count| count }.first
  end

  def taxonomy_preliminary_request(taxonomy_attr)
    JSON.load(URI.open(api_url_with_params(taxonomy_attr:,
                                      taxonomy_preliminary_higher_limit: true)))
  end

  def classification
    taxonomy_description.split(NpiTaxonomyDescriptions::SEPARATOR).first
  end

  def specialization
    taxonomy_description.split(NpiTaxonomyDescriptions::SEPARATOR).second
  end

  def joined_taxonomy_description
    NpiTaxonomyDescriptions.join(taxonomy_description)
  end

  def taxonomy_preliminary_higher_limit
    RESULTS_INCREMENT * TAXONOMIES_TEST_LIMIT_MULTIPLIER
  end
end