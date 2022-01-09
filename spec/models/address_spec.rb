require 'rails_helper'

RSpec.describe Address, type: :model do
  # I generally don't test private methods, but this one is complex enough to
  # warrant a test.
  describe ".merge_duplicates" do
    context "when addresses are identical but with different phone numbers" do
      let!(:duplicate_addresses) do
        [
          Address.new(line_1: "496 Southland Dr",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-288-2425"]),
          Address.new(line_1: "496 Southland Dr",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-576-0002"]),
          Address.new(line_1: "496 Southland Dr",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-361-1369"])
        ]
      end

      it "merges them into one address which has all the phone numbers" do
        merged_addresses = Address.send(:merge_duplicates, duplicate_addresses)
        expect(merged_addresses.count).to eq 1
        expect(merged_addresses.first.phone_numbers)
              .to eq ["859-288-2425", "859-576-0002", "859-361-1369"]
      end
    end

    context "when addresses are identical but with different punctuation" do
      let!(:duplicate_addresses) do
        [
          Address.new(line_1: "501 N. Darby Creek Rd., Ste. 21",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-338-0466"]),
          Address.new(line_1: "501 N Darby Creek Rd Ste 21",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-338-0466"])
        ]
      end

      it "ignores punctuation and merges them anyway" do
        merged_addresses = Address.send(:merge_duplicates, duplicate_addresses)
        expect(merged_addresses.count).to eq 1
      end
    end

    context "when one line_1 is longest" do
      let!(:duplicate_addresses) do
        [
          Address.new(line_1: "1351 Newtown Pike Bldg 1",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-233-0444"]),
          Address.new(line_1: "1351 Newtown Pike",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-233-0444"])
        ]
      end

      it "merges them, keeping the longest line_1" do
        merged_addresses = Address.send(:merge_duplicates, duplicate_addresses)
        expect(merged_addresses.count).to eq 1
        expect(merged_addresses.first.line_1).to eq "1351 Newtown Pike Bldg 1"
      end
    end

    context "when one line_1 is longest" do
      let!(:duplicate_addresses) do
        [
          Address.new(line_1: "1350 Bull Lea Rd",
                      line_2: "Ste 310",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-246-8287"]),
          Address.new(line_1: "1350 Bull Lea Road",
                      city: "Lexington", state: "KY",
                      phone_numbers: ["859-246-8287"])
        ]
      end

      it "merges them, keeping the longest line_1" do
        merged_addresses = Address.send(:merge_duplicates, duplicate_addresses)
        expect(merged_addresses.count).to eq 1
        expect(merged_addresses.first.line_1).to eq "1350 Bull Lea Rd"
        expect(merged_addresses.first.line_2).to eq "Ste 310"
      end
    end
  end
end
