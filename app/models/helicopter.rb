class Helicopter < ApplicationRecord
  validates :price_hour, :occupancy, :autonomy, :category, :description, :city, :status, presence: true
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
