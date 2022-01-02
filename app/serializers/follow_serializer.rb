class FollowSerializer < ActiveModel::Serializer
  attributes :id, :followed_user


def followed_user
  user_id = self.object.followed_user_id
  user = User.all.find(user_id)
end

  has_one :follower
  
  # The user being followed



end
