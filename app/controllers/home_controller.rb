class HomeController < ApplicationController
  def index
    @restaurant = [{name: "Ohms Food"}, {name: "my restaurant"}, {name: "Goteborg Wok Sushi"}]
  end
end
