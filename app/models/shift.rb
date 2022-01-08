# frozen_string_literal: true

class Shift < ApplicationRecord
  validates :contract_name, :service_name, :date_title, :interval, :user_name, :user_value, :week,
            presence: true
end
