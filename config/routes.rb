Rails.application.routes.draw do
  resources :spottings
  resources :birds
  resources :users
  resources :follows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  post "/signup", to: "users#create"
  get "/me", to: "users#show_current_user"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/mybirds", to: "spottings#user_spottings"
  get "/usersfeed", to: "users#users_feed"
  get "/followed", to: "users#followed_feed"
  get "/followings", to: "follows#current_user_follows"

  get "/favicon.ico", to: "fallback#favicon"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

    


end
