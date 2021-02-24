class BookingsController < ApplicationController
  
  def new
    @booking = Booking.new
  end

  def create
    @helicopter = Helicopter.find(params[:helicopter_id])
    @booking.user = current_user
    @booking.helicopter = @helicopter
    if booking.save
    redirect_to booking_path(@booking)    
    else
      redirect_to helicopter_path(@helicopter)
    end
  end
  
  def index
    @bookings = Booking.all
  end
    
  def show
    @booking = Booking.find(params[:helicopter_id])
  end
    
  def destroy
    @booking = Booking.find(params[:helicopter_id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:helicopter_id, :user_id)
  end
end
