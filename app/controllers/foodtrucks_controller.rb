class FoodtrucksController < ApplicationController

  # View all food trucks, their details and provide
  # ability to add/remove a favorite
  def index
    @user = User.find(current_user.id)
    @foodtrucks = Foodtruck.all
  end

  # Show page to enter a new food truck
  def new
    @foodtruck = Foodtruck.new
  end

  # Add the new food truck to the database
  def create
    Foodtruck.create(params[:foodtruck])
    redirect_to '/foodtrucks'
  end

  # Show page to edit a food truck
  def edit
    @foodtruck = Foodtruck.find(params[:id])
  end

  # Update the food truck in the database
  def update
    foodtruck = Foodtruck.find(params[:id])
    foodtruck.update_attributes(params[:foodtruck])
    redirect_to '/foodtrucks'
  end
end