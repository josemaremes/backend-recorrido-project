require 'rails_helper'

RSpec.describe Service, type: :model do
  subject { described_class.new(
    service_name: 'Encriptación en S3',
  ) }

  it 'Es válido con todos sus campos definidos' do
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.service_name = nil
    expect(subject).to_not be_valid
  end
end
