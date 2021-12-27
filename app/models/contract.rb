class Contract < ApplicationRecord
  belongs_to :service
  belongs_to :opening_schedule
  belongs_to :closing_schedule
  belongs_to :opening_day
  belongs_to :closing_day
end
