require 'rails_helper'

RSpec.feature "Finish Order", type: :feature do

  context 'for a product' do

    before(:each) do
      user = users(:basic_user)
      login_as(user)
      @product = products(:product_1)
    end

    it 'its stored in the cart', driver: :desktop do
      visit "/products/#{@product.id}"

      expect(page).to have_text("LG OLEDB8P")
      click_on "Add to cart"

      expect(page).to have_text("You have already this product in the shopping cart!")

      click_on "Go to the cart"
      expect(page).to have_text("Your current cart")
      expect(page).to have_text(@product.name)

      click_on "Place the order"
      expect(page).to have_text("New order")
      click_on "Confirm order"
      expect(page).to have_text("Available Credit Cards")

      within('#payment-form') do
        fill_in 'number', with: "12345"
        fill_in 'code', with: "123"
      end
      click_on "Pay"
      expect(page).to have_text("Good")
    end

    it 'its stored in the cart and then removed', driver: :desktop do
      visit "/products/#{@product.id}"
      click_on "Add to cart"
      click_on "Go to the cart"
      click_on "Clean up my cart"

      expect(page).to have_no_text(@product.name)
    end

  end
end