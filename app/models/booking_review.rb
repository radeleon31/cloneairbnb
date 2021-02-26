class BookingReview < ApplicationRecord
  belongs_to :booking
  belongs_to :helicopter

  validates :description, length: { minimum: 20 }
end
