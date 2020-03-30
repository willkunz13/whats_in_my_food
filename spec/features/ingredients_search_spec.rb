require 'rails_helper'


feature "user" do

  scenario "search for ingredient" do

		visit '/'

		fill_in 'q', with: "sweet potatoes"
		click_on 'commit'

		expect(current_path).to eq('/foods')
		expect(page).to have_content('number:')
		expect(page).to have_content('GTIN/UPC code:')
		expect(page).to have_content('Brand Owner: ')
		expect(page).to have_content('Ingredients')
	end
end

		
