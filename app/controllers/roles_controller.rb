# frozen_string_literal: true

# Clase que contiene los métodos relacionados al modelo Roles
class RolesController < ApplicationController
  # Devuelve el listado de todos los roles
  def index
    @roles = Role.all
    render json: { roles: @roles }, status: 200
  end
end
