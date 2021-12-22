class FollowsController < ApplicationController
  

  def create
    follow = Follow.create
  end



  private


  # params necessary? This action will only happen on button click after the log in portal is passed

  # def follow_params
  #   params.permit(:)
    
  # end

end
