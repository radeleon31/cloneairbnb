class AddColumnToBookingReview < ActiveRecord::Migration[6.0]
  def change
    add_reference :booking_reviews, :helicopter, index: true
  end
end
