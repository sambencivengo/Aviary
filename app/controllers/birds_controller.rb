class BirdsController < ApplicationController
  skip_before_action :authorize

  def index
    birds = Bird.all 
    render json: birds
  end
  
end
