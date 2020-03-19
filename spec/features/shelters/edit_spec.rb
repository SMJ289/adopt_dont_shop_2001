require 'rails_helper'

RSpec.describe "New Shelter" do
  describe 'As a visitor' do
    describe 'When I visit the shelter show page' do
      describe 'I can click Update Shelter' do
        it "I can update a shelter" do
          shelter_1 = Shelter.create(name: "Denver Animal Shelter", address: "1241 W Bayaud Ave", city: "Denver", state: "CO", zip: "80223")

          visit "/shelters/#{shelter_1.id}"

          click_link 'Update Shelter'

          expect(page).to have_current_path "/shelters/#{shelter_1.id}/edit"

          fill_in 'Name', with: 'New Denver Animal Shelter'
          fill_in 'Address', with: '1241 W Bayaud Ave'
          fill_in 'City', with: 'Denver'
          fill_in 'State', with: 'CO'
          fill_in 'Zip', with: '80223'

          click_on 'Submit Changes'

          expect(page).to have_current_path "/shelters/#{shelter.id}"
          expect(page).to have_content ('New Denver Animal Shelter')
        end
      end
    end
  end
end
