# frozen_string_literal: true

# Clase que contiene los métodos relacionados al modelo Services
class ServicesController < ApplicationController
  before_action :authorized

  # Crea un contrato en la base de datos
  def create
    @service = Service.create(service_params)
    if @service.valid?
      render json: { service: @service }
    else
      render json: { error: 'There was a problem when trying to create the service in the DB' }
    end
  end

  # Elimina un contrato de la base de datos
  def destroy
    @service = Service.find_by(id: service_params[:id])
    @service.delete
    render json: { msg: 'The service was deleted' }, status: 200
  end

  # Devuelve el listado de todos los servicios
  def index
    @services = Service.all
    render json: { services: @services }, status: 200
  end

  private

  def service_params
    params.permit(:id, :service_name)
  end
end
