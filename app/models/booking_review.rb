class BookingReview < ApplicationRecord
  belongs_to :booking
  belongs_to :helicopter

  validates :description, length: { minimum: 5 }
end
