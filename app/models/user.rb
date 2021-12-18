class User < ApplicationRecord
  has_secure_password
  has_many :spottings
  has_many :birds, through: :spottings

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
end
