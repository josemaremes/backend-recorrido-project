Rails.application.routes.draw do
  # Ruta home
  root to: "home#index"

  # Rutas de autenticación
  post "/login", to: "auth#login"
  post "/register", to: "auth#create"
  get "/logout", to: "auth#logout"

  # Rutas de usuarios
  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"

  # Rutas para obtener listados de contratos, roles y servicios
  resources :contracts, only: [:index]
  resources :roles, only: [:index]
  resources :services, only: [:index]
end
