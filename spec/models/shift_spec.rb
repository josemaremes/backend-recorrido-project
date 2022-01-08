require 'rails_helper'

RSpec.describe Shift, type: :model do
  subject { described_class.new(
    contract_name: 'Recorrido',
    service_name: 'Ec2 Monitoreo',
    date_title: 'Lunes 1 de Enero',
    interval: '00:00',
    user_name: 'José Manuel',
    user_value: true,
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

  it 'No es válido si no existe el título de fecha' do
    subject.date_title = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el intervalo de tiempo' do
    subject.interval = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el nombre del empleado' do
    subject.user_name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el valor de disponibilidad del empleado' do
    subject.user_value = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe la semana en cuestion' do
    subject.week = nil
    expect(subject).to_not be_valid
  end
end
