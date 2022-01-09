require "rails_helper"

RSpec.describe "Search page", type: :system, js: true do
  context "when no parameters are chosen" do
    it "shows an alert" do
      visit searches_show_path
      click_on "Search"
      expect(page).to have_selector('div[role=alert]')
    end
  end

  context "when there are multiple pages of results" do
    let!(:specialty) { "mental health" }

    it "shows results, and can show more" do
      VCR.use_cassette "search multiple pages" do
        visit searches_show_path
        fill_in 'query_taxonomy_description', with: specialty
        click_on "Search"
        expect(page).to have_selector('#results article',
                                      count: Query::RESULTS_INCREMENT)
        click_on "Show more"
        expect(page).to have_selector('#results article',
                                      count: Query::RESULTS_INCREMENT * 2)
      end
    end
  end

  context "when there is only one page of results" do
    let!(:specialty) { "primary care" }
    let!(:state) { "Kentucky" }
    let!(:city) { "Lexington" }
    let!(:gender) { "m" }

    it "shows results, then an alert when the user tries to show more" do
      VCR.use_cassette "search one page" do
        visit searches_show_path
        fill_in 'query_taxonomy_description', with: specialty
        select state, from: 'query_state'
        fill_in 'query_city', with: city
        choose "query_gender_#{gender}"
        click_on "Search"
        expect(page).to have_selector('#results article')
        click_on "Show more"
        expect(page).to have_selector('#results div[role=alert]')
      end
    end
  end
end