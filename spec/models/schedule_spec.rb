require 'rails_helper'

RSpec.describe Schedule, type: :model do
  subject { described_class.new(
    time_name: '0',
  ) }

  it 'Es válido con todos sus campos definidos' do
    expect(subject).to be_valid
  end

  it 'No es válido si no existe el nombre' do
    subject.time_name = nil
    expect(subject).to_not be_valid
  end
end
