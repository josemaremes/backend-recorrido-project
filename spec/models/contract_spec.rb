require 'rails_helper'

RSpec.describe Contract, type: :model do
  subject { described_class.new }

  it 'No es válido si faltan uno o más parámetros' do
    expect(subject).to_not be_valid
  end

  subject { described_class.new(
    contract_name: 'Recorrido',
    open_close_day: 'Lunes-Viernes',
    open_close_schedule: '0-12'
  ) }

  it 'Es válido con todos sus campos definidos' do
    service_subject = Service.create(:service_name => 'EC2 Despliegue')
    subject.service_id = service_subject.id
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.contract_name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existen los días de apertura y cierre' do
    subject.open_close_day = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existen las horas de apertura y cierre' do
    subject.open_close_schedule = nil
    expect(subject).to_not be_valid
  end

  describe 'associations' do
    it { should belong_to(:service).class_name('Service') }
  end
end
