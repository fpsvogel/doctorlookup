require "rails_helper"

RSpec.describe "Site layout", type: :system do
  describe "footer" do
    it "is present" do
      visit searches_show_path
      expect(page).to have_selector('footer')
    end
  end

  describe "header" do
    it "is present" do
      visit searches_show_path
      expect(page).to have_selector('header')
    end
  end
end