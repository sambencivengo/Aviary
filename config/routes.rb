Rails.application.routes.draw do
  resources :spottings
  resources :birds
  resources :users
  resources :follows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/mybirds", to: "spottings#user_spottings"
  get "/feed", to: "users#users_feed"
end
