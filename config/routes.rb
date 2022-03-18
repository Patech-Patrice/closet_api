Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "homepage#index"
  resources :handbags
  resources :shoes
  resources :tops
  resources :jackets
  resources :bottoms
  resources :accessories
end
