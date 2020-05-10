require 'rails_helper'

RSpec.feature "Search", type: :feature do

  context 'for TV' do

    before(:each) do
      user = users(:basic_user)
      login_as(user)
    end

    it 'gets all related results', driver: :desktop do
      visit '/'

      expect(page).to have_text("Logged as basic@basic.com")
      fill_in "search_keywords", with: "TV"

      click_on "Search"

      expect(page).to have_text("Results for: TV")
      within('tbody.tbody-results') do
        expect(page).to have_xpath(".//tr", :count => 6)
      end

      # review LGOLEDB8P
      expect(page).to have_text("For people who want the best picture they can afford, stretching the budget to get LG's B8 OLED is pretty...")
      # review TCL 6
      expect(page).to have_text("More than a year after I first reviewed it, the TCL 6 series is still the best TV for the...")
      # product LGOLEDB8P
      expect(page).to have_text("OLED TVs are the picture quality kings, but they're not cheap.")
      # product TCL 6
      expect(page).to have_text("No TV I've ever tested offers this much picture quality for this little cash.")
      # comments
      expect(page).to have_text("This TV is great for gaming, high quality sound. Love this product!")
      expect(page).to have_text("I am just waiting for black friday! I want this TV so much")
    end

    it 'filters by brand: LG', driver: :desktop do
      visit '/'

      expect(page).to have_text("Logged as basic@basic.com")
      fill_in "search_keywords", with: "TV"

      click_on "Search"

      expect(page).to have_text("Results for: TV")

      # filter by product LG
      click_on "LG: 1"

      # product LGOLEDB8P
      expect(page).to have_text("OLED TVs are the picture quality kings, but they're not cheap.")
      within('tbody.tbody-results') do
        expect(page).to have_xpath(".//tr", :count => 1)
      end
    end

  end
end