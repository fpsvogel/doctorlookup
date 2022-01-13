require "open-uri"
require "json"

class NpiApiAdapter
  attr_reader :query

  # see https://npiregistry.cms.hhs.gov/registry/help-api
  # "&enumeration_type=NPI-1" means that only individuals are returned, not
  # organizations (NPI-2), which have a different JSON response structure and
  # would require an OrganizationResult model.
  API_URL = "https://npiregistry.cms.hhs.gov/api/?number=&enumeration_type=NPI-1&taxonomy_description=&first_name=&use_first_name_alias=&last_name=&organization_name=&address_purpose=&city=&state=&postal_code=&country_code=&limit=&skip=&version=2.1"

  API_PARAMS = Query::FORM_PARAMS \
                - [:taxonomy_description] \
                - [:gender] \
                + [:limit]

  def initialize(query:)
    @query = query
  end

  def call
    url = api_url_with_params
    JSON.load(URI.open(url))
  end

  def taxonomy_preliminary_contest_winner
    matches = {}
    [:classification, :specialization].each do |taxonomy_attr|
      matches[taxonomy_attr] = taxonomy_preliminary_request(taxonomy_attr)
                                .to_s.scan("\"#{query.joined_taxonomy_description}\"").count
    end
    matches.max_by { |_attr, count| count }.first
  end

  private

  def api_url_with_params(taxonomy_attr: :effective_taxonomy_description,
                          use_taxonomy_preliminary_higher_limit: false)
    url = API_URL
    (API_PARAMS).each do |attr|
      url = insert_into_url(url, attr)
    end
    url = insert_into_url(url, :taxonomy_description,
                          attr_value: query.send(taxonomy_attr) ||
                                      query.taxonomy_description)
    if use_taxonomy_preliminary_higher_limit
      url = insert_into_url(url, :limit,
                            attr_value: query.taxonomy_preliminary_higher_limit)
    end
    url
  end

  def insert_into_url(url, param, attr_value: query.send(param))
    if attr_value.present?
      return url.sub("&#{param}=", "&#{param}=#{attr_value.to_s.gsub("&", "%26")}")
    end
    url
  end

  def taxonomy_preliminary_request(taxonomy_attr)
    JSON.load(URI.open(api_url_with_params(taxonomy_attr:,
                                    use_taxonomy_preliminary_higher_limit: true)))
  end
end