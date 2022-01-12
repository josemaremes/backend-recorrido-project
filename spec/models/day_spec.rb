require 'rails_helper'

RSpec.describe Day, type: :model do
  subject { described_class.new(
    day_name: 'Lunes',
  ) }

  it 'Es válido con todos sus campos definidos' do
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.day_name = nil
    expect(subject).to_not be_valid
  end
end
