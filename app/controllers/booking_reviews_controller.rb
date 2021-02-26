class BookingReviewsController < ApplicationController
before_action :set_review, only: [:show]
skip_after_action :verify_authorized

   def new
    @booking_review = BookingReview.new
    authorize @booking_review
    @booking = Booking.find(params[:booking_id])
  end

  def show
    @booking_review = BookingReview.new
    @booking = Booking.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @booking_review = BookingReview.new(review_params)
    @booking_review.booking = @booking
    @booking_review.helicopter = @booking.helicopter
    if @booking_review.save
      redirect_to helicopter_path(@booking.helicopter)
    else
      render 'booking_reviews/show'
    end
  end

  private

  def review_params
    params.require(:booking_review).permit(:description)
  end

  def set_review
    @booking_review = BookingReview.find(params[:id])
    authorize @booking_review
  end
end
