require 'rails_helper'

RSpec.describe "pet index page", type: :feature do
  it "can show all pets with their image, name, age, sex, and shelter" do
    shelter_1 = Shelter.create(name: "Denver Animal Shelter", address: "1241 W Bayaud Ave", city: "Denver", state: "CO", zip: "80223")

    pet_1 = shelter_1.pets.create(
      image: "https://upload.wikimedia.org/wikipedia/commons/f/f1/Jack_Russell_Terrier_1.jpg",
      name: "Spot",
      approximate_age: "5",
      sex: "male")

    pet_2 = shelter_1.pets.create(
      image: "https://c8.alamy.com/comp/2A8F42Y/a-young-white-domestic-shorthair-cat-with-blue-eyes-and-a-surprised-expression-2A8F42Y.jpg",
      name: "Sugar",
      approximate_age: "3",
      sex: "female")

    visit "/pets"

    expect(page).to have_css("img[src*= '#{pet_1.image}']")
    expect(page).to have_content(pet_1.name)
    expect(page).to have_content(pet_1.approximate_age)
    expect(page).to have_content(pet_1.sex)
    expect(page).to have_content(shelter_1.name)

    expect(page).to have_css("img[src*= '#{pet_2.image}']")
    expect(page).to have_content(pet_2.name)
    expect(page).to have_content(pet_2.approximate_age)
    expect(page).to have_content(pet_2.sex)
    expect(page).to have_content(shelter_1.name)
  end
end
