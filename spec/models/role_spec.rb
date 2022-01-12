require 'rails_helper'

RSpec.describe Role, type: :model do
  subject { described_class.new(
    role_name: 'Supervisor',
  ) }

  it 'Es válido con todos sus campos definidos' do
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.role_name = nil
    expect(subject).to_not be_valid
  end
end
