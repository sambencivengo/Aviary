class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create, :destroy]

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user.to_json(except: [:created_at, :updated_at, :password_digest])
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    render json: "Logout successful"
  end

end