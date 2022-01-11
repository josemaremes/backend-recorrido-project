# frozen_string_literal: true

# Modelo asociado a los totales de turnos asignados
class Balance < ApplicationRecord
  validates :contract_name, :service_name, :user_name, :count, :shift, :week, presence: true
end
