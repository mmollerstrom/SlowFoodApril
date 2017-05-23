class MenusController < ApplicationController
  def show
    # restaurant = Restaurant.find(params[:restaurant_id])
    # @menu = restaurant.menus.find(params[:id])
    # Menu.find(params[:id])
    @menu = Menu.where("restaurant_id = ?", params[:restaurant_id].to_i).first
    binding.pry
  end
end
