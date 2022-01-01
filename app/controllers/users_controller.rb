class UsersController < ApplicationController
  # before_action :authorized

  # Crea un usuario en la base de datos
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: "There was a problem when trying to create the user in the DB" }
    end
  end

  # Devuelve el listado de todos los usuarios
  def index
    @users = User.joins(:role).select(:id, :name, :lastname, :email, :role_id, :role_name)
    render json: { users: @users }, status: 200
  end

  # Devuelve la información del usuario con el id dado
  def show
    @user = User.find_by(id: user_params[:id])
    render json: { user: @user }, status: 200
  end

  # Eliminar un usuario de la base de datos
  def destroy
    @user = User.find_by(id: user_params[:id])
    @user.delete
    render json: { msg: "El usuario ha sido eliminado" }, status: 200
  end

  private

  def user_params
    params.permit(:id, :email, :password_digest, :name, :lastname, :role_id)
  end
end
