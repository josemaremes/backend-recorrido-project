# frozen_string_literal: true

# Clase que maneja sólo el read para mostrar un mensaje en las rutas protegidas
class HomeController < ApplicationController
  def index
    render json: { msg: 'Please use the frontend application :)' }, status: 200
  end
end
