require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can show all shelters with their name" do
    shelter_1 = Shelter.create(name: "Denver Animal Shelter")

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
  end

  it "can link to new shelter form" do
    click_on 'New Shelter'

    expect(page).to have_current_path "/new"
  end
end
