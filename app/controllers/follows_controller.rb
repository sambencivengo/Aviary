class FollowsController < ApplicationController
  

  def create
    follow = Follow.create(follow_params)
    render json: follow
  end

  private


  # params necessary? This action will only happen on button click after the log in portal is passed

  def follow_params
    params.permit(:follower_id, :followed_id)
    
  end

end
