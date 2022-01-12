# frozen_string_literal: true

class Schedule < ApplicationRecord
  validates :time_name, presence: true
end
