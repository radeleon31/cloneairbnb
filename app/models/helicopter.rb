class Helicopter < ApplicationRecord
  validates :price_hour, :occupancy, :autonomy, :type, :description, :city, :status, presence: true
  belongs_to :user
  has_many :bookings
end
