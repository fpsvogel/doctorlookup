require "open-uri"
require "json"

# a query to the NPI API.
class Query
  include ActiveModel::Model
  include ActiveModel::Attributes

  # see https://npiregistry.cms.hhs.gov/registry/help-api
  API_URL = "https://npiregistry.cms.hhs.gov/api/?number=&enumeration_type=NPI-1&taxonomy_description=&first_name=&use_first_name_alias=&last_name=&organization_name=&address_purpose=&city=&state=&postal_code=&country_code=&limit=&skip=&version=2.1"

  API_PARAM_ATTRIBUTES =
    %i[taxonomy_description
       state
       first_name
       last_name]

  API_PARAM_ATTRIBUTES.each do |attr|
    attribute attr, :string
  end
  attribute :state, :string, default: UsaStates::DEFAULT_VALUE

  validate :any_param_besides_state_is_present

  def results
    response = JSON.load(URI.open(api_url_with_params))
    Result.array_from_api_response(response)
  end

  def states
    UsaStates::ALL
  end

  private

  def any_param_besides_state_is_present
    others = API_PARAM_ATTRIBUTES - [:state]
    others_blank = others.all? { |attr| send(attr).blank? }
    if others_blank
      errors.add :base, "Please specify at least one parameter besides State."
    end
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