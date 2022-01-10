require 'rails_helper'

RSpec.describe Result, type: :model do
  # I generally don't test private methods, but this one is complex enough to
  # warrant a test.
  describe ".parse_specialties" do
    context "when there are multiple specialties of the same description" do
      let!(:result_taxonomies) do
        [{"code" => "101YM0800X",
          "desc" => "Counselor Mental Health",
          "primary" => true,
          "state" => "KY",
          "license" => "14713" },
        {"code" => "101YM0800X",
          "desc" => "Counselor Mental Health",
          "primary" => false,
          "state" => "KY",
          "license" => "002137" },
        {"code" => "106H00000X",
          "desc" => "Marriage & Family Therapist",
          "primary" => false,
          "state" => "KY",
          "license" => "14713" }]
      end

      it "returns the primary specialty and an array of other specialties, " \
        "with no overlap or duplicates" do
        primary, others = Result.send(:parse_specialties, result_taxonomies)
        expect(primary).to eq "Counselor (Mental Health)"
        expect(others).to eq ["Marriage & Family Therapist"]
      end
    end

    context "when other specialties are included in the primary specialty" do
      let!(:result_taxonomies) do
        [{"code" => "101YM0800X",
          "desc" => "Counselor Mental Health",
          "primary" => true,
          "state" => "KY",
          "license" => "14713" },
        {"code" => "101Y00000X",
          "desc" => "Counselor",
          "primary" => false,
          "state" => "KY",
          "license" => "002137" }]
      end

      it "removes the redundant other specialties" do
        primary, others = Result.send(:parse_specialties, result_taxonomies)
        expect(primary).to eq "Counselor (Mental Health)"
        expect(others).to eq []
      end
    end
  end
end
