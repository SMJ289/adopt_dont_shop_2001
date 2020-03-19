require 'rails_helper'

RSpec.describe "make new shelter", type: :feature do
  it "can make a new shelter using form" do

    visit "/shelters/new"

    fill_in 'Name', with: 'Denver Animal Shelter'
    fill_in 'address', with: '1241 W Bayaud Ave'
    fill_in 'City', with: 'Denver'
    fill_in 'State', with: 'CO'
    fill_in 'Zip', with: '80223'

    click_on 'New Shelter'

    expect(page).to have_content("Address: #{@shelters.last.address}")
  end
end
