# frozen_string_literal: true

# Clase que contiene los métodos relacionados a la autenticación del usuario
class AuthController < ApplicationController
  # Permite crear un usuario desde la vista de registro
  def create
    @user = User.create(auth_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }, status: 200
    else
      render json: { msg: 'There was a problem when trying to create the user in the DB' },
             status: 500
    end
  end

  # Permite a un usuario autenticarse para entrar en el sistema.
  def login
    puts auth_params
    @user = User.find_by(email: auth_params[:email])
    if @user&.authenticate(auth_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { msg: 'Invalid email or password' }, status: 400
    end
  end

  # Cierra la sesión de un usuario
  def logout
    @user = nil
    render json: { user: @user, token: nil }
  end

  private

  def auth_params
    params.permit(:email, :password, :name, :lastname, :role_id)
  end
end
