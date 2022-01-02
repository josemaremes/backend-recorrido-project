Rails.application.routes.draw do
  # Ruta home
  root to: "home#index"

  # Rutas de autenticación
  post "/login", to: "auth#login"
  post "/register", to: "auth#create"
  get "/logout", to: "auth#logout"

  # Rutas por defectos para los contratos, los usuarios, los servicios
  # los días, los roles y los horarios
  resources :contracts, only: [:index, :create, :destroy]
  resources :days, only: [:index]
  resources :roles, only: [:index]
  resources :services, only: [:index, :create, :destroy]
  resources :schedules, only: [:index]
  resources :users, only: [:index, :destroy]

  # # Rutas de servicios

  # # Rutas de días

  # # Rutas de horarios


  # # Rutas de usuarios
  # get "/users", to: "users#index"
  # get "/users/:id", to: "users#show"
  # post "/users", to: "users#create"
  # delete "/users/:id", to: "users#destroy"

  # # Rutas para obtener listados de contratos, roles, servicios, días y horas
end
