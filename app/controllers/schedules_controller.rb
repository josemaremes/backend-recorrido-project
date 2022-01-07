# frozen_string_literal: true

class SchedulesController < ApplicationController
  # before_action :authorized

  # Devuelve el listado de todos las horas
  def index
    @schedules = Schedule.select(:id, :time_name)
    render json: { schedules: @schedules }, status: 200
  end
end
