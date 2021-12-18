class SpottingsController < ApplicationController
skip_before_action :authorize, only: [:index, :create, :destroy]
  def index
    spottings = Spotting.all 
    render json: spottings
  end

  def user_spottings
    my_birds = current_user.spottings
    render json: my_birds
  end

  def create
    spotting = Spotting.create(spotting_params)
    render json: spotting, status: :created
  end

  def destroy
    spotting = Spotting.find(params[:id])
    spotting.destroy
    render json: "Deleted Spotting"
  end
  private

  def spotting_params
    params.permit(:notes, :user_id, :bird_id, :image, :lat, :long)
  end

end
