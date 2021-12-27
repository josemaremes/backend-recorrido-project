Rails.application.routes.draw do
  # Root path
  root to: "home#index"

  # Authentication path
  get "/roles", to: "auth#index"
  post "/login", to: "auth#login"
  post "/register", to: "auth#create"
  get "/logout", to: "auth#logout"

  # Users path
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"

end
