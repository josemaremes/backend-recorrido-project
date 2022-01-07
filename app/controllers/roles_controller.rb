# frozen_string_literal: true

class RolesController < ApplicationController
  # Devuelve el listado de todos los roles
  def index
    @roles = Role.all
    render json: { roles: @roles }, status: 200
  end
end
