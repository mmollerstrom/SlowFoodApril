class Owners::RestaurantsController < ApplicationController

  def index
    @owner = current_user.id
    @restaurants = Restaurant.where(user_id: @owner)
  end

  def show
    binding.pry
    @restaurant_id = params[:id]
    @owner_id = current_user.id #params[:user_id]
  end
end
