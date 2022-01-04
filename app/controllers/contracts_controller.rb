class ContractsController < ApplicationController
  before_action :authorized

  # Crea un contrato en la base de datos
  def create
    @contract = Contract.create(contract_params)
    if @contract.valid?
      render json: { contract: @contract }
    else
      render json: { error: "There was a problem when trying to create the contract in the DB" }
    end
  end

  # Elimina un contrato de la base de datos
  def destroy
    @contract = Contract.find_by(id: contract_params[:id])
    @contract.delete
    render json: { msg: "The contract was deleted" }, status: 200
  end

  # Devuelve el listado de todos los contratos
  def index
    @contracts = Contract.joins(:service).select(:id, :service_id, :service_name, :contract_name, :open_close_day, :open_close_schedule)
    render json: { contracts: @contracts }, status: 200
  end

  private

  def contract_params
    params.permit(:id, :contract_name, :service_id, :open_close_day, :open_close_schedule)
  end
end
