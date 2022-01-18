class FallbackController < ActionController::Base
  skip_before_action :authorize

  # def index
  #   render json:{ error: "No way, pal!"}
  # end
  def index
    render file: 'public/index.html'
  end
end
