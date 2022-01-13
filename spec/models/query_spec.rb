require 'rails_helper'

RSpec.describe Query, type: :model do
  describe "#results" do
    context "when just a specialty is provided" do
      let!(:query) { Query.new(taxonomy_description: "primary care") }

      it "returns an API response converted to an array of Results" do
        VCR.use_cassette "Query#results_by_specialty" do
          expect_results_to_be_valid(query)
        end
      end
    end

    context "when just a first name is provided" do
      let!(:query) { Query.new(first_name: "james") }

      it "returns an API response converted to an array of Results" do
        VCR.use_cassette "Query#results_by_first_name" do
          expect_results_to_be_valid(query)
        end
      end
    end
  end

  context "when all attributes besides state and gender are blank" do
    let!(:query) do
      Query.new(state: "KY", gender: "F")
    end

    it "is invalid" do
      expect(query).to_not be_valid
      expect(query.errors[:base].first.downcase).to include "besides state and gender"
    end
  end

  context "when any attribute besides state and gender is provided" do
    let!(:query) { Query.new(taxonomy_description: "primary care") }

    it "is valid" do
      expect(query).to be_valid
    end
  end

  private

  def expect_results_to_be_valid(query)
    results = query.results
    expect(results).to_not be_empty
    results.each do |result|
      expect(result.valid?).to be true
    end
  end
end
