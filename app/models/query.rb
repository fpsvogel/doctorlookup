require "open-uri"
require "json"

class Query
  include ActiveModel::Model
  include ActiveModel::Attributes

  # see https://npiregistry.cms.hhs.gov/registry/help-api
  API_URL = "https://npiregistry.cms.hhs.gov/api/?number=&enumeration_type=&taxonomy_description=&first_name=&use_first_name_alias=&last_name=&organization_name=&address_purpose=&city=&state=&postal_code=&country_code=&limit=&skip=&version=2.1"

  ATTRIBUTES = [:taxonomy_description,
                :state,
                :first_name,
                :last_name]

  ATTRIBUTES.each do |attr|
    attribute attr, :string
  end
  attribute :state, :string, default: UsaStates::DEFAULT_VALUE

  validate :any_param_besides_state_is_present

  def states
    UsaStates::ALL
  end

  def results
    url = "#{API_URL}"
    ATTRIBUTES.each do |attr|
      url.sub!("&#{attr}=", "&#{attr}=#{send(attr)}") if send(attr).present?
    end
    response = JSON.parse(URI.open(url).read)
    response["results"]
  end

  private

  def any_param_besides_state_is_present
    others = ATTRIBUTES - [:state]
    others_blank = others.all? { |attr| send(attr).blank? }
    if others_blank
      errors.add :base, "Please specify at least one parameter besides State."
    end
  end
end