require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new }

  it 'No es válido si faltan uno o más parámetros' do
    expect(subject).to_not be_valid
  end

  subject { described_class.new(
    name: 'José Manuel',
    lastname: 'Barrientos Linares',
    email: 'josemacloud@gmail.com',
    password: '123456'
  ) }

  it 'Es válido con todos sus campos definidos' do
    employee_role = Role.create(:role_name => 'Administrador')
    subject.role_id = employee_role.id
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el apellido' do
    subject.lastname = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe el correo' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'No es válido si no existe la contraseña' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  describe 'associations' do
    it { should belong_to(:role).class_name('Role') }
  end
end
