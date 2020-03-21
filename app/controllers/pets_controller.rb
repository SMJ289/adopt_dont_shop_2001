class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:pet_id])
  end

  def create
    Pet.create(shelter_params)
  end
end
