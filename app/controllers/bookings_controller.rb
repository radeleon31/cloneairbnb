class BookingsController < ApplicationController
  
  #definir acción para cada tipo de usuario con current_user.bookings (usando su propia ruta).

  def create

    @booking = Booking.new(booking_params)
    @helicopter = Helicopter.find(params[:helicopter_id])
    @booking.user = current_user
    @booking.helicopter = @helicopter
    @booking.status = true
    if @booking.save
      redirect_to helicopter_path(@helicopter)
    else
      render "helicopters/show", object: @helicopter
    end
  end
    
  def destroy
    @booking = Booking.find(params[:helicopter_id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
