class Owners::MenusController < ApplicationController
  def new
    @menu = Menu.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @menu = Menu.new(name: params[:menu][:name], restaurant_id: params[:restaurant_id])
    if @menu.save
      redirect_to owners_restaurant_path(params[:restaurant_id])
      flash[:notice] = "Menu added"
    else
      redirect_to "new"
    end
  end
end
