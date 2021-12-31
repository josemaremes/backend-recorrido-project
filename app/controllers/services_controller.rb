class ServicesController < ApplicationController
  # before_action :authorized

  # Devuelve el listado de todos los servicios
  def index
    @services = Service.all
    render json: { services: @services }, status: 200
  end
end
