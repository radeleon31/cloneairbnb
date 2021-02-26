class BookingsController < ApplicationController
  #definir acción para cada tipo de usuario con current_user.bookings (usando su propia ruta).

  def index
    # @helicopters = Helicopter.find(params[:helicopter_id])
    # authorize @booking
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @helicopter = Helicopter.find(params[:helicopter_id])
    @booking.user = current_user
    authorize @booking
    @booking.helicopter = @helicopter
    @booking.status = true
    if @booking.end_date
      @booking.total_amount = @helicopter.price_hour * (@booking.end_date - @booking.start_date) / 3_600
    end
    # if @booking.total_amount
      if @booking.save
        # flash[:success] = "Booking created!"
        redirect_to bookings_path, notice: "Booking created"
      else
        render "helicopters/show", object: @helicopter
    end
  end

  def destroy
    # @booking = Booking.find(params[:helicopter_id])

    @booking = policy_scope(Booking)
    # authorize @booking
    # @booking.destroy
    # respond_to do |format|
    #   format.html { redirect_to posts_url, notice: 'Bill was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_amount)
  end
end
