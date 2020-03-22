class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @shelter = Shelter.find(params[:id])
  end

  def show
    @pet = Pet.find(params[:pet_id])
  end

  def create
    Pet.create!({
      name: params[:name],
      image: params[:image],
      description: params[:description],
      approximate_age: params[:approximate_age],
      sex: params[:sex],
      adoption_status: "adoptable",
      shelter_id: params[:id]
    })
    redirect_to "/shelters/#{params[:id]}/pets"
  end

  def edit
    @pet = Pet.find(params[:pet_id])
  end

  def update
    pet = Pet.find(params[:pet_id])
    pet.update({
      name: params[:name],
      image: params[:image],
      description: params[:description],
      approximate_age: params[:approximate_age],
      sex: params[:sex],
      })
    pet.save
    redirect_to "/pets/#{pet.id}"
  end

  private
  def pet_params
    params.permit(:name, :image, :discription, :approximate_age, :sex)
  end
end
