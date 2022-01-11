require 'rails_helper'

RSpec.describe Balance, type: :model do
  subject { described_class.new(
    contract_name: 'Recorrido',
    service_name: 'Ec2 Monitoreo',
    user_name: 'José Manuel',
    count: 15,
    shift: 3,
    week: 'Semana 1 de 2022'
  ) }

  it 'Es válido con todos sus campos definidos' do
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre del contrato' do
    subject.contract_name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el nombre del servicio' do
    subject.service_name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el nombre del empleado' do
    subject.user_name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el valor del total de turnos' do
    subject.count = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el valor de los turnos disponibles' do
    subject.shift = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe la semana en cuestion' do
    subject.week = nil
    expect(subject).to_not be_valid
  end
end
