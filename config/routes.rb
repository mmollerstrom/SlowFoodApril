Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index

  # get '/user/:user_id/restaurants', to: 'user/restaurants#index', as:'user_restaurants'
  # get '/user/:user_id/restaurants/:id', to: 'user/restaurants#show', as:'user_restaurant'


  # namespace 'owner' do
  #   resources :restaurants, only: [:index, :show]
  # end

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :menus, only: [:show, :index, :create, :new]
  end

  namespace 'owners' do
    resources :restaurants, only: [:index, :show, :create, :new] do
      resources :menus, only: [:show, :index, :create, :new]
    end
  end
end
