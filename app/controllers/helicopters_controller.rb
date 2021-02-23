class HelicoptersController < ApplicationController

  def new
    @helicopter = Helicopter.new
  end

  def create
    @helicopter = Helicopter.new(helicopter_params)
    @helicopter.user = current_user
    if @helicopter.save
      # redirect_to helicopter_index_path(@helicopter)
    else
      render :new
    end
  end

  def helicopter_params
    params.require(:helicopter).permit(:price_hour, :occupancy, :autonomy, :type, :description, :city, :status)
  end
end
