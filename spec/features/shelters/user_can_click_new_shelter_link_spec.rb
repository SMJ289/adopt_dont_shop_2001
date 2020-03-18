require 'rails_helper'

RSpec.describe "new shelter link", type: :feature do
  it "can link to new shelter form" do

    visit "/shelters"
    click_on 'New Shelter'

    expect(page).to have_current_path "/shelters/new"
  end
end
