class Contract < ApplicationRecord
  belongs_to :service
  # belongs_to :schedule
  # belongs_to :day
  validates :contract_name, :service_id, :opening_schedule_id, :closing_schedule_id, :opening_day_id,
  :closing_day_id, presence: true
end
