class HelicoptersController < ApplicationController
  before_action :set_helicopter, only: [:show, :edit, :update, :destroy]

  def index
    @helicopters = policy_scope(Helicopter)
  end

  def show
    @booking = Booking.new
  end

  def new
    @helicopter = Helicopter.new
    authorize @helicopter
  end

  def edit
  end

  def update
    if @helicopter.update(helicopter_params)
      redirect_to helicopter_path(@helicopter)
    else
      render :edit
    end
  end

  def destroy
    if @helicopter.destroy
      redirect_to helicopters_path(@helicopter)
    else
      render :index
    end
  end

  def create
    @helicopter = Helicopter.new(helicopter_params)
    @helicopter.user = current_user
    authorize @helicopter
    if @helicopter.save
      redirect_to helicopters_path(@helicopter)
    else
      render :new
    end
  end

  private

  def set_helicopter
    @helicopter = Helicopter.find(params[:id])
    authorize @helicopter
  end

  def helicopter_params
    params.require(:helicopter).permit(:price_hour, :occupancy, :autonomy, :category, :description, :city, :status, :photo)
  end
end
