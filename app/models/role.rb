# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :user
  validates :role_name, presence: true
end
