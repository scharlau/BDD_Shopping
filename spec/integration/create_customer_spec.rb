require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
    scenario "can create customer" do
        visit '/customers/new'
        expect(page).to have_content('New Customer')

        fill_in 'Name', :with=>'Sharon Harrison'
        fill_in 'Email', :with=>'sharon@harrison.com'
        fill_in 'Address', :with=>'23 Main Street'
        click_button 'Create Customer'
        expect(page).to have_content('Name: Sharon Harrison')
        
    end
end
