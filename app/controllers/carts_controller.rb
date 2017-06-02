class CartsController < ApplicationController
  def add_to_cart
    session[:cart] ||= []
    dish = Dish.find(params[:dish_id])
    @restaurant_id = params[:restaurant_id]
    session[:cart] << dish
    redirect_to restaurant_menus_path(@restaurant_id)
    flash[:notice] = "#{dish.name} added to cart"
  end

  def checkout
    @items = session[:cart]
    binding.pry
  end
end
