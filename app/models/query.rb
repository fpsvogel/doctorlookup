require "open-uri"
require "json"

# Queries the NPI API.
class Query
  include ActiveModel::Model
  include ActiveModel::Attributes
  include WriteAttribute

  RESULTS_INCREMENT = 10
  GENDER_INCREMENT_MULTIPLIER = 3 # to reduce the need for repeated API calls.

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
  attribute :limit,          :integer
  attribute :gender,         :string
  attribute :stopping_point, :integer, default: 0

  validate :any_param_besides_state_is_present

  # Calls the API.
  # @return [Array<Result>] relevant information from each result in the response
  def results
    self.limit = stopping_point + results_increment
    results_batch = []
    while results_batch.count < RESULTS_INCREMENT
      response = JSON.load(URI.open(api_url_with_params))
      new_results, reached_end = Result.results_from_api_response(response, self)
      results_batch += new_results
      self.stopping_point += limit
      break if reached_end
      self.limit = stopping_point + results_increment
    end
    results_batch
  end

  # @return [Array<String>] a list of all NPI taxonomy descriptions
  def taxonomy_descriptions
    NPITaxonomyDescriptions::ALL
  end

  # @return [Array<Array<String>>] pairs of U.S. state names and abbreviations
  def states
    UsaStates::ALL
  end

  def gender=(new_gender)
    new_gender = nil if new_gender.downcase == "any"
    write_attribute(:gender, new_gender)
  end

  private

  def any_param_besides_state_is_present
    others = API_PARAM_ATTRIBUTES - [:state]
    others_blank = others.all? { |attr| send(attr).blank? }
    if others_blank
      errors.add :base, "Please specify at least one parameter besides State and Gender."
    end
  end

  def results_increment
    increment = RESULTS_INCREMENT
    increment *= GENDER_INCREMENT_MULTIPLIER if gender
    increment
  end

  def api_url_with_params
    url = API_URL
    API_PARAM_ATTRIBUTES.each do |attr|
      if send(attr).present?
        url = url.sub("&#{attr}=", "&#{attr}=#{send(attr)}")
      end
    end
    url
  end
end