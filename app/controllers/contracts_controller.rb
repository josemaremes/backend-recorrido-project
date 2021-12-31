class ContractsController < ApplicationController
  # before_action :authorized

  # Devuelve el listado de todos los contratos
  def index
    @contracts = Contract.all
    render json: { contracts: @contracts }, status: 200
  end
end
