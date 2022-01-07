require 'rails_helper'

RSpec.describe Search, type: :model do
  context "when attributes with defaults are not provided" do
    let!(:search) { Search.new(name: "Joe") }

    it "is valid with defaults" do
      expect(search).to be_valid
      expect(search.state).to eq UsaStates::DEFAULT
    end
  end

  context "when required attributes are blank" do
    let!(:search) { Search.new(name: "", state: "KY") }

    it "is invalid" do
      message = "can't be blank"
      expect(search).to_not be_valid
      expect(search.errors[:name]).to include message
    end
  end
end
