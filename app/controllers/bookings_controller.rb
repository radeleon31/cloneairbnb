class BookingsController < ApplicationController
  #definir acción para cada tipo de usuario con current_user.bookings (usando su propia ruta).

  def index
    @helicopters = Helicopter.find(params[:helicopter_id])
    @booking = policy_scope(Booking)

  end

  def create
    @booking = Booking.new(booking_params)
    @helicopter = Helicopter.find(params[:helicopter_id])
    @booking.user = current_user
    authorize @booking
    @booking.helicopter = @helicopter
    @booking.status = true
    @booking.total_amount = 5555.77
    if @booking.save
      # redirect_to helicopter_path(@helicopter), notice: "Booked!"
      redirect_to helicopter_bookings_path(@helicopter)
    else
      render "helicopters/show", object: @helicopter
    end
  end

  def destroy
    @booking = Booking.find(params[:helicopter_id])
    authorize @booking
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end
end
