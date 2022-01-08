# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :user, dependent: :destroy
  validates :role_name, presence: true
end
