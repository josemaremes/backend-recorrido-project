class UsersController < ApplicationController
  before_action :authorized

  # Devuelve el listado de todos los usuarios
  def index
    @users = User.joins(:role).select(:id, :name, :lastname, :email, :role_id, :role_name)
    render json: { users: @users }, status: 200
  end

  # Eliminar un usuario de la base de datos
  def destroy
    @user = User.find_by(id: user_params[:id])
    @user.delete
    render json: { msg: "The user was deleted" }, status: 200
  end

  private

  def user_params
    params.permit(:id, :email, :password_digest, :name, :lastname, :role_id)
  end
end
