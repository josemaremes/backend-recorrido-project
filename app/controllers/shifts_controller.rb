# frozen_string_literal: true

class ShiftsController < ApplicationController
  before_action :authorized

  # Crea la información de los turnos en la BD
  def create
    # Definir arreglo que será almacenado en la BD
    shifts_array = []

    # Obtener arreglo de entrada
    params = JSON.parse(shift_params[:data])

    # Construir la información que se va a guardar en la BD con el formato correcto
    params.each do |shift|
      new_shift = {
        contract_name: shift['contract'],
        service_name: shift['service'],
        date_title: shift['dateTitle'],
        interval: shift['interval'],
        not_name: shift['notName'],
        first_user_name: shift['firstUserName'],
        second_user_name: shift['secondUserName'],
        third_user_name: shift['thirdUserName'],
        week: shift['week']
      }

      puts new_shift

      # Determinar si existe un turno seleccionado
      if !shift['firstUserValue'] && !shift['secondUserValue'] && !shift['thirdUserValue']
        new_shift[:not_value] = true
        new_shift[:first_user_value] =
          new_shift[:second_user_value] = new_shift[:third_user_value] = false
      else
        new_shift[:not_value] = false

        # Asignar de forma aleatoria el turno
        user_value_array = [shift['firstUserValue'], shift['secondUserValue'],
                            shift['thirdUserValue']]
        count = user_value_array.count(true)
        if (count = 3)
          selector = rand(2)
          new_shift[:first_user_value] = selector === 0
          new_shift[:second_user_value] = selector === 1
          new_shift[:third_user_value] = selector === 2
        elsif (count = 2)
          index = user_value_array.find_index(false)
          selector = rand(1)
          if (index = 0)
            new_shift[:first_user_value] = false
            new_shift[:second_user_value] = selector === 0
            new_shift[:third_user_value] = selector === 1
          elsif (index = 0)
            new_shift[:first_user_value] = selector === 0
            new_shift[:second_user_value] = false
            new_shift[:third_user_value] = selector === 1
          else
            new_shift[:first_user_value] = selector === 0
            new_shift[:second_user_value] = selector === 1
            new_shift[:third_user_value] = false
          end
        else
          new_shift[:first_user_value] = shift['firstUserValue']
          new_shift[:second_user_value] = shift['secondUserValue']
          new_shift[:third_user_value] = shift['thirdUserValue']
        end
      end

      # Agregar objeto al array
      shifts_array << new_shift
    end

    # Obtener parámetros de búsqueda
    contract_name = shifts_array[0][:contract_name]
    service_name = shifts_array[0][:service_name]
    week = shifts_array[0][:week]

    # Eliminar información de la BD
    Shift.where(contract_name: contract_name, service_name: service_name,
                week: week).destroy_all

    # Insertar nuevamente
    @shifts = Shift.create(shifts_array)

    # Renderizar
    render json: { shifts: @shifts }
  end

  # Devuelve el listado de todos los turnos
  def index
    contract_name = shift_params[:contract_name]
    service_name = shift_params[:service_name]
    week = shift_params[:week]
    @shifts = Shift.where(contract_name: contract_name, service_name: service_name,
                          week: week).all
    render json: { shifts: @shifts }, status: 200
  end

  private

  def shift_params
    params.permit(:data, :contract_name, :service_name, :week)
  end
end
