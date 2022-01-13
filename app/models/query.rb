# Queries the NPI API.
class Query
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ReadWriteAttribute

  RESULTS_INCREMENT = 10
  GENDER_INCREMENT_MULTIPLIER = 3 # to reduce the need for repeated API calls.
  TAXONOMIES_TEST_LIMIT_MULTIPLIER = 20 # also to minimize API calls.

  FORM_PARAMS =
    %i[taxonomy_description
       state
       city
       gender
       first_name
       last_name]

  attribute :taxonomy_description, :string
  attribute :state,          :string
  attribute :city,           :string
  attribute :first_name,     :string
  attribute :last_name,      :string
  attribute :gender,         :string
  attribute :stopping_point, :integer, default: 0
  attribute :effective_taxonomy_attr, :string
  attr_reader :limit

  validate :any_param_besides_state_and_gender_is_present

  # Calls the API.
  # @return [Array<Result>] relevant information from each result in the response
  def results
    @limit = stopping_point + gender_adjusted_results_increment
    results_batch = []
    first_try = (stopping_point == 0)
    while results_batch.count < RESULTS_INCREMENT
      response = api_adapter.call
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

  def taxonomy_description=(new_taxonomy_description)
    new_taxonomy_description = nil if new_taxonomy_description.downcase == "any"
    write_attribute(:taxonomy_description, new_taxonomy_description)
  end

  # @return [Boolean] whether the taxonomy description (specialty) has a
  # specialization, like "Clinical" in "Social Worker -- Clinical".
  def taxonomy_description_has_specialization?
    return false if taxonomy_description.nil?
    taxonomy_description.include? NpiTaxonomyDescriptions::SEPARATOR
  end

  # @return [String] the taxonomy description (specialty) with the
  # specialization in parentheses instead of after hyphens.
  def parenthesized_taxonomy_description
    NpiTaxonomyDescriptions.parenthesize(joined_taxonomy_description)
  end

  # @return [String] the taxonomy description (specialty) with no separator
  # between the two parts.
  def joined_taxonomy_description
    NpiTaxonomyDescriptions.join(taxonomy_description)
  end

  # @return [String] the specialty's classification (the first part) or
  # specialization (the second part), depending on which is deemed more
  # effective to use in the API call. (The API allows only one or the other as
  # a parameter, not both together.)
  def effective_taxonomy_description
    return send(effective_taxonomy_attr) unless effective_taxonomy_attr.nil?
    return nil unless taxonomy_description_has_specialization?
    self.effective_taxonomy_attr = api_adapter.taxonomy_preliminary_contest_winner
    send(effective_taxonomy_attr)
  end

  # @return [Integer] the number of results to request from the API in the
  # preliminary "contest" between the classification and specialization.
  def taxonomy_preliminary_higher_limit
    RESULTS_INCREMENT * TAXONOMIES_TEST_LIMIT_MULTIPLIER
  end

  private

  def api_adapter
    @api_adapter ||= NpiApiAdapter.new(query: self)
  end

  def any_param_besides_state_and_gender_is_present
    others = FORM_PARAMS - [:state, :gender]
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

  def classification
    taxonomy_description.split(NpiTaxonomyDescriptions::SEPARATOR).first
  end

  def specialization
    taxonomy_description.split(NpiTaxonomyDescriptions::SEPARATOR).second
  end
end