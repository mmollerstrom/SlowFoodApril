class Owners::DishesController < ApplicationController

  def index
    
  end
  def new
    @menu = Menu.find(params[:menu_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.menu_id = params[:menu_id]
    if @dish.save
      redirect_to owners_restaurant_menu_dishes_path(params[:restaurant_id], params[:menu_id])
      flash[:notice] = "Dish added succesfully"
    else
      redirect_to "new"
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :price)
  end

end
