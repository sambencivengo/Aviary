class User < ApplicationRecord

  # auth
  has_secure_password

  # bird and spottings associations
  has_many :spottings
  has_many :birds, through: :spottings

  # follower table associations
  # will return an array of follows for given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"

  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower
  
  #####################
  
  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
  
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user
  
  # returns an array of other users who the user has followed
  # Will return an array of users who follow the user instance

  # Will return an array of users who follow the user instance
  
  # validations
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true
end
