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
    begin
      Twitter.user_timeline(params[:foodtruck][:handle])
      Foodtruck.create(params[:foodtruck])
      redirect_to '/foodtrucks'
    rescue
      redirect_to '/foodtrucks/new'
    end
  end

  # Show page to edit a food truck
  def edit
    @foodtruck = Foodtruck.find(params[:id])
  end

  # Update the food truck in the database
  def update
    begin
      Twitter.user_timeline(params[:foodtruck][:handle])
      foodtruck = Foodtruck.find(params[:id])
      foodtruck.update_attributes(params[:foodtruck])
      redirect_to '/foodtrucks'
    rescue
        redirect_to "/foodtrucks/#{params[:id]}"
    end
  end

  # Remove a food truck from the database
  def destroy
    Foodtruck.destroy(params[:id])
    redirect_to '/foodtrucks'
  end
end