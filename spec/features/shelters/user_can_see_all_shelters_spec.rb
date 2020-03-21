require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can show all shelters with their name" do
    shelter_1 = Shelter.create(name: "Denver Animal Shelter", address: "1241 W Bayaud Ave", city: "Denver", state: "CO", zip: "80223")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
  end
end
