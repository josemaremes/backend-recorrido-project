# frozen_string_literal: true

Rails.application.routes.draw do
  # Ruta home
  root to: 'home#index'

  # Rutas de autenticación
  post '/login', to: 'auth#login'
  post '/register', to: 'auth#create'
  get '/logout', to: 'auth#logout'

  # Rutas por defectos para los contratos, los usuarios, los servicios
  # los días, los roles, los horarios, y los turnos
  resources :contracts, only: %i[index create destroy]
  resources :days, only: [:index]
  resources :roles, only: [:index]
  resources :services, only: %i[index create destroy]
  resources :schedules, only: [:index]
  resources :users, only: %i[index destroy]

  post '/shifts/filtered', to: 'shifts#index'
  post '/shifts', to: 'shifts#create'
end
