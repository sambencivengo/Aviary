class User < ApplicationRecord

  # auth
  has_secure_password

  # bird and spottings associations
  has_many :spottings
  has_many :birds, through: :spottings

  # follower table associations
  # will return an array of follows for given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"
  # returns array of users who follow the given user instance
  has_many :followers, through: :received_follows, source: :follower


  # validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true
end
