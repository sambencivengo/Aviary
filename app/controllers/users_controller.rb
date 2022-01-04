class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :show, :update]

  # def create
  #   user = User.create!(user_params)
  #   session[:user_id] = user.id
  #   render json: user, status: :created
  # end
  def index
    users = User.all
    render json: users
  end



  def create 
    user = User.create(user_params)
    if user.valid?
        render json: user, status: :created 
    else 
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity 
    end 
  end

  def update
    user = User.find_by(id: params[:id])
    if user
    user.update(user_params)
    render json: user
    else
      render json: { error: "user not found"}, status: :not_found
    end
  end


  def users_feed
    users = User.all.select{ |user| user.id != current_user.id }
    feed_users = users - current_user.followings
    follows = current_user.given_follows

    render json: feed_users
  end

  def followed_feed
    followed_users = current_user.followings
    render json: followed_users
  end

  def show
    user = User.all.find_by(id: params[:id])
    user_obj = {user: user, spottings: user.spottings}
    render json: user
  end

  def show_current_user
    render json: current_user
  end


  private 

  def user_params
    params.permit(:username, :email, :password, :password_confirmation, :lat, :lng)
  end

end
