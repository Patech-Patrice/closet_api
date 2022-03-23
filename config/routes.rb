Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homepage#index"
  resources :handbags, only: [:index, :create, :destroy]
  resources :brands
  #resources :shoes
  #resources :tops
  #resources :jackets
  #resources :bottoms
  #resources :accessories
    end
  end
  
end
