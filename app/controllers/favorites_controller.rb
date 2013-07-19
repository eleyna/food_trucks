class FavoritesController < ApplicationController

  # View a user's favorite food trucks, their info
  # and recent tweets
  def index
    if !user_signed_in?
      redirect_to '/users/sign_in'
    else
      @user = User.find(current_user.id)
      @fave_trucks = @user.foodtrucks
      @tweets = {}
      @fave_trucks.each do |truck|
        @tweets[truck[:name]] = Twitter.user_timeline(truck[:handle])
      end
    end
  end

  # Update a user's favorite trucks
  def update
    user = User.find(params[:user])
    truck = Foodtruck.find(params[:id])
    if params[:remove]
      user.foodtrucks.delete(truck)
    else
      user.foodtrucks << truck
    end
    redirect_to '/foodtrucks'
  end
end