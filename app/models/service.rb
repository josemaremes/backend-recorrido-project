# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :contract, dependent: :destroy
  validates :service_name, presence: true
end
