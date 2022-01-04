Rails.application.routes.draw do
  # Ruta home
  root to: "home#index"

  # Rutas de autenticación
  post "/login", to: "auth#login"
  post "/register", to: "auth#create"
  get "/logout", to: "auth#logout"

  # Rutas por defectos para los contratos, los usuarios, los servicios
  # los días, los roles, los horarios, y los turnos
  resources :contracts, only: [:index, :create, :destroy]
  resources :days, only: [:index]
  resources :roles, only: [:index]
  resources :services, only: [:index, :create, :destroy]
  resources :schedules, only: [:index]
  resources :users, only: [:index, :destroy]

  post "/shifts/filtered", to: "shifts#index"
  post "/shifts", to: "shifts#create"
end
