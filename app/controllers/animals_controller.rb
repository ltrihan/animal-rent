class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

def show
  @animal = Animal.find(params[:id])
end

def new
  @animal = Animal.new
end

def create
  @animal = Animal.new(animal_params)
  if @animal.save
    redirect_to user_path(@user)
  else
    render 'new'
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
  redirect_to user_path(@user)
end

def animal_params
  params.require(:animal).permit(:name  :description, :species, :price)

end
