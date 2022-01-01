class Service < ApplicationRecord
  has_many :contract
  validates :service_name, presence: true
end
