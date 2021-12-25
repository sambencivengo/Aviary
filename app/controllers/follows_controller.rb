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

  def current_user_follows
    follows = current_user.given_follows
    render json: follows
  end

  def destroy
    follow = Follow.find_by(id: params[:id])
    follow.destroy
    follows = current_user.given_follows

    users = User.all.select{ |user| user.id != current_user.id }
    feed_users = users - current_user.followings

    obj = {follows: follows, feed_users: feed_users}
    render json: follows
  end


  private


  # params necessary? This action will only happen on button click after the log in portal is passed

  def follow_params
    params.permit(:follower_id, :followed_user_id)
    
  end

end
