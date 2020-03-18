require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can show all shelters with their name" do
    shelter_1 = Shelter.create(name: "Denver Animal Shelter")

    visit "/songs"

    expect(page).to have_content(shelter_1.title)
    expect(page).to have_content("Name: #{shelter_1.name}")
  end
end
