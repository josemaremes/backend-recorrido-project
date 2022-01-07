# frozen_string_literal: true

class Contract < ApplicationRecord
  belongs_to :service
  validates :contract_name, :service_id, :open_close_day, :open_close_schedule, presence: true
end
