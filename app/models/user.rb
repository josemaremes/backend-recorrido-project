class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  validates :name, :lastname, :email, :role_id, presence: true
  validates :email, uniqueness: true
end
