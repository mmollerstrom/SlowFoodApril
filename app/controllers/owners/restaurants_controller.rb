class Owners::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where(user_id: current_user.id)
  end

  def show
    @restaurant_id = params[:id]
    #Hard coded menu name because there is a completely different feature to show menu
    new_menu = Menu.create(name: "Orchid Bistro", restaurant_id: @restaurant_id)
    @menu = Menu.all
  end
end
