class SpottingsController < ApplicationController
skip_before_action :authorize, only: [:index, :create, :destroy]
  def index
    spottings = Spotting.all.order('date DESC') 
    
    render json: spottings.
  end

  def user_spottings
    my_birds = current_user.spottings 
    # serializer so it's cleaner
    sorted_birds = my_birds.order('date DESC')
    render json: sorted_birds
  end

  def create
    spotting = Spotting.create(spotting_params)
    if spotting.valid? 
      render json: spotting, status: :created
    else
      render json: { errors: spotting.errors.full_messages }, status: :unprocessable_entity 
    end
  end

  def destroy
    spotting = Spotting.find(params[:id])
    spotting.destroy
    spottings = current_user.spottings
    render json: spottings
  end

  private

  def spotting_params
    params.permit(:notes, :user_id, :bird_id, :image, :date, :lat, :long)
    # .require(:spotting).
  end

end
