class FollowsController < ApplicationController
  

  def create
    follow = Follow.create(follow_params)
    users = User.all.select{ |user| user.id != current_user.id }
    feed_users = users - current_user.followings
    render json: feed_users, status: :created
  end

  def index
    follows = Follow.all
    render json: follows
  end


  def destroy
    byebug
    # find follow where current_user.id & followed user are the parameters. pass in that follow's ID to delete
    follow = Follow.find_by(follower_id: params)
    # follow.destroypara
    render json: {}
  end
  private


  # params necessary? This action will only happen on button click after the log in portal is passed

  def follow_params
    params.permit(:follower_id, :followed_user_id)
    
  end

end
