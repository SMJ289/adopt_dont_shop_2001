class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def create
    Pet.create(shelter_params)
  end
end
