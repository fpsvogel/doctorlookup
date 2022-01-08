require 'rails_helper'

RSpec.describe Result, type: :model do
  # I generally don't test private methods, but this one is complex enough to
  # merit a test.
  describe ".parse_specialties" do
    let!(:result_taxonomies) do
      [{"code"=>"101YM0800X",
        "desc"=>"Counselor Mental Health",
        "primary"=>true },
       {"code"=>"101YM0800X",
        "desc"=>"Counselor Mental Health",
        "primary"=>false },
       {"code"=>"106H00000X",
        "desc"=>"Marriage & Family Therapist",
        "primary"=>false }]
    end

    it "returns the primary specialty and an array of other specialties" do
      primary, others = Result.send(:parse_specialties, result_taxonomies)
      expect(primary).to eq "Counselor Mental Health"
      expect(others).to eq ["Marriage & Family Therapist"]
    end
  end
end
