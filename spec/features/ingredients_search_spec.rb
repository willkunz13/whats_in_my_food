require 'rails_helper'


feature "user" do

  scenario "search for ingredient" do

		visit '/'

		fill_in 'q', with: "sweet potatoes"
		click_on 'commit'

		expect(current_path).to eq('/foods')
		expect(page).to have_content('number: 1')
		expect(page).to have_content('description: REAL VEGETABLE CHIPS')
		expect(page).to have_content('GTIN/UPC code: 728229015529')
		expect(page).to have_content('Brand Owner: The Hain Celestial Group, Inc.')
		expect(page).to have_content('Ingredients: A BLEND OF SWEET POTATOES (SWEET POTATO, PURPLE SWEET POTATO, BATATA), AVOCADO OIL, SEA SALT.')
	end
end

		
