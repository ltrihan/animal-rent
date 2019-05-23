class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    @localized_animals = Animal.where.not(latitude: nil, longitude: nil)

    @markers = @localized_animals.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude
      }
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @user = current_user
    @animal = Animal.new(animal_params)
    @animal.user = @user
    @animal.address = @user.address
    if @animal.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path(@animal)
  end

  def animal_params
    params.require(:animal).permit(:name, :description, :species, :price, :address, :latitude, :longitude)
  end
end
