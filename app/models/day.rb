# frozen_string_literal: true

class Day < ApplicationRecord
  validates :day_name, presence: true
end
