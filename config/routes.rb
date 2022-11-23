Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#   resources :restaurants do
# #   Prefix Verb   URI Pattern                            Controller#Action
# #   restaurants GET    /restaurants(.:format)                 restaurants#index
# #               POST   /restaurants(.:format)                 restaurants#create
# # new_restaurant GET    /restaurants/new(.:format)             restaurants#new
# # edit_restaurant GET    /restaurants/:id/edit(.:format)        restaurants#edit
# #    restaurant GET    /restaurants/:id(.:format)             restaurants#show
# #               PATCH  /restaurants/:id(.:format)             restaurants#update
# #               PUT    /restaurants/:id(.:format)             restaurants#update
# #               DELETE /restaurants/:id(.:format)             restaurants#destroy
#     resources :reviews, only: [:new, :create]
#   end
#   resources :reviews, only: [:destroy]
# end

   # Read all
  # get "restaurants", to:"restaurants#index"
  # # Create
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"
  # # Read one
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end
