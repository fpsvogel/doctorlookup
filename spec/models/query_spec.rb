require 'rails_helper'

RSpec.describe Query, type: :model do
  # TODO use VCR to record the API call
  describe "#call" do
    let!(:query) { Query.new(taxonomy_description: "primary care") }

    it "returns an API response" do
      expect(query.results).to_not be_nil
    end
  end

  context "when attributes with defaults are not provided" do
    let!(:query) { Query.new(taxonomy_description: "primary care") }

    it "is valid with defaults" do
      expect(query).to be_valid
      expect(query.state).to eq UsaStates::DEFAULT_VALUE
    end
  end

  context "when all attributes besides state are blank" do
    let!(:query) do
      Query.new(taxonomy_description: "",
                first_name: "",
                last_name: "")
    end

    it "is invalid" do
      expect(query).to_not be_valid
      expect(query.errors[:base].first.downcase).to include "besides state"
    end
  end
end
