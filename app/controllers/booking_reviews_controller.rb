class BookingReviewsController < ApplicationController
before_action :set_review, only: [:show]

   def new
    @booking_review = BookingReview.new
    authorize @booking_review
  end

  def show
    @booking_review = BookingReview.new
    @booking = Booking.new
  end

  def create
    @helicopter = Helicopter.find(params[:helicopter_id])
    @booking_review = BookingReview.new(review_params)
    @booking_review.helicopter = @helicopter
    if @booking_review.save
      redirect_to helicoper_path(@helicopter)
    else
      render 'helicopter/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_review
    @booking_review = BookingReview.find(params[:id])
    authorize @booking_review
  end
end
