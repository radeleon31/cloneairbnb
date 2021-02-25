class Helicopter < ApplicationRecord
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  validates :price_hour, :occupancy, :autonomy, :category, :description, :city, :status, presence: true
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
