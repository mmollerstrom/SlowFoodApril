Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index
  get '/users/:user_id/restaurants', to: 'users/restaurants#index', as:'user_restaurants'

  resources :restaurants, only: [:index, :show]

  resources :users, only: [:show] do
    resources :restaurants, only: [:show, :create, :new] do
      resources :menus, only: [:show]
    end
  end
end
