class FallbackController < ApplicationController
  skip_before_action :authorize
  
  def index
    render json:{ error: "No way, pal!"}
  end
end
