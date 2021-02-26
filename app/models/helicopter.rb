class Helicopter < ApplicationRecord
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  validates :price_hour, :occupancy, :autonomy, :category, :description, :city, :status, presence: true
  belongs_to :user
  has_many :bookings
  has_many :booking_reviews, dependent: :destroy
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_all_helicopter_properties,
    against: [ :price_hour, :occupancy, :autonomy, :category, :city, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
