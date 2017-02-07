Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :shops
  resources :cart_items, only: [:index] do
    get :add, :checkout, on: :collection
  end

  root to: 'products#index'
end
