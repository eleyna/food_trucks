class FoodtrucksController < ApplicationController

  # View all food trucks, their details and provide
  # ability to add/remove a favorite
  def index
    @user = User.find(current_user.id)
    @foodtrucks = Foodtruck.all
  end

  # Show page to enter a new food truck
  def new
    @locations = Location.all
    @foodtypes = Foodtype.all
  end

  # Add the new food truck to the database
  def create
    redirect_to '/foodtrucks'
  end

  # Show page to edit a food truck
  def edit
    @foodtruck = Foodtruck.find(params[:id])
    @locations = Location.all
    @foodtypes = Foodtype.all
  end

  # Update the food truck in the database
  def update
    foodtruck = Foodtruck.find(params[:id])
    foodtruck.name = params[:name]
    foodtruck.handle = params[:handle]
    foodtruck.location = Location.find(params[:location_id])
    foodtruck.foodtype = Foodtype.find(params[:foodtype_id])
    foodtruck.save
    redirect_to '/foodtrucks'
  end
end