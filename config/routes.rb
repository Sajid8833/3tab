Rails.application.routes.draw do
  resources :cities
  resources :makes
  resources :categories
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cars#index"
end
