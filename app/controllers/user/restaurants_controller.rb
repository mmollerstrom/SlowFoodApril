class User::RestaurantsController < ApplicationController

  def index
    @user = current_user.id
    @restaurants = Restaurant.where(user_id: @user)
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end


end
