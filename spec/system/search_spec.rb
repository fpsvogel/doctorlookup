require "rails_helper"

RSpec.describe "Search page", type: :system, js: true do
  context "when no parameters are chosen" do
    it "shows an alert" do
      visit searches_show_path
      click_on "Search"
      expect(page).to have_selector('div[role=alert]')
    end
  end

  context "when no results are found" do
    let!(:first_name) { "some name that belongs to no one" }

    it "shows an alert" do
      VCR.use_cassette "search with no results" do
        visit searches_show_path
        fill_in 'query_first_name', with: first_name
        click_on "Search"
        expect(page).to have_selector('div[role=alert]')
      end
    end
  end

  context "when there are multiple pages of results" do
    let!(:specialty) { "Counselor" }

    it "shows results, and can show more" do
      VCR.use_cassette "search multiple pages" do
        visit searches_show_path
        execute_script("window.specialtySelect.setValue('#{specialty}', false)")
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
    let!(:specialty) { "Technician, Pathology" }
    let!(:state) { "KY" }
    let!(:city) { "Lexington" }

    it "shows results, then an alert when the user tries to show more" do
      VCR.use_cassette "search one page" do
        visit searches_show_path
        execute_script("window.specialtySelect.setValue('#{specialty}', false)")
        execute_script("window.stateSelect.setValue('#{state}', false)")
        click_on "Search"
        expect(page).to have_selector('#results article')
        click_on "Show more"
        expect(page).to have_selector('#results div[role=alert]')
      end
    end
  end
end