class Owners::DishesController < ApplicationController

  def new
    @menu = Menu.find(params[:menu_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new
  end

end
