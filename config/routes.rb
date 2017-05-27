Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index
  get '/user/:user_id/restaurants', to: 'user/restaurants#index', as:'user_restaurants'

  resources :restaurants, only: [:index, :show]

  resources :user, only: [:show] do
    resources :restaurants, only: [:show, :create, :new] do
      resources :menus, only: [:show]
    end
  end
end
