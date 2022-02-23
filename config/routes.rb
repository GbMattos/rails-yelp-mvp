Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # resources :reviews, only: [:destroy]
  # get "restaurants", to: "restaurants#index"
  # # get "restaurants/new"
  # # post "restaurants"
  # # get "restaurants/38"
  # # get "restaurants/38/reviews/new"
  # # post "restaurants/38/reviews"
  # resources :restaurants
  # resources :reviews
end
