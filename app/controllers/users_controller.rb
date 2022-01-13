class UsersController < ApplicationController
  skip_before_action :authorize, only: [:create, :index, :show]

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
    user = User.find(params[:id])

    user.update(location_params)
    render json: user

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

    # sorted_spottings = spottings.order('date DESC')
    # user_obj = {user: user, spottings: spottings}
    render json: user
  end

  def show_current_user
    render json: current_user
  end


  private 

  def location_params
    params.permit(:lat, :lng)
  end

  def user_params
    params.permit(:username, :email, :password, :password_confirmation, :lat, :lng, :id)
  end

end
