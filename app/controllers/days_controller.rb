# frozen_string_literal: true

class DaysController < ApplicationController
  before_action :authorized

  # Devuelve el listado de todos los días
  def index
    @days = Day.select(:id, :day_name)
    render json: { days: @days }, status: 200
  end
end
