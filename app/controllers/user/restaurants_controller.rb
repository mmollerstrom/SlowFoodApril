class User::RestaurantsController < ApplicationController

  def index
    @user = current_user.id
    @restaurants = Restaurant.where(user_id: @user)
  end

  def show
    @restaurant_id = params[:id]
    @user_id = params[:user_id]
  end
end
