Rails.application.routes.draw do
  root to: "home#index"

  post "/login", to: "auth#login"
  post "/register", to: "auth#create"
  get "/logout", to: "auth#logout"

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"

  resources :roles, only: [:index]

end
