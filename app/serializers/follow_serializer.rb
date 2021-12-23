class FollowSerializer < ActiveModel::Serializer
  attributes :id




  has_one :follower

  # The user being followed
  has_one :followed_user
end
