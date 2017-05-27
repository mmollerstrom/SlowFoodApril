class MenusController < ApplicationController
  def show
    @menus = Menu.where(restaurant_id: params[:restaurant_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.where(id: params[:restaurant_id]).first
    @user = User.where(id: params[:user_id]).first
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(name: params[:menu][:name], restaurant_id: params[:restaurant_id])
    if @menu.save
      redirect_to user_restaurant_path(params[:user_id], params[:restaurant_id])
      flash[:notice] = "Menu added"
    else
      redirect_to "new"
    end
  end
end
