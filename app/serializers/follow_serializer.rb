class FollowSerializer < ActiveModel::Serializer
  attributes :id, :user_obj


def user_obj
  user_id = self.object.followed_user_id
  user = User.all.find(user_id)
  user_obj = {followed_user: user, spottings: user.spottings}
  user_obj
end

  has_one :follower
  
  # The user being followed



end
