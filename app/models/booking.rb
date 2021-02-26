class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :helicopter
  has_many :reviews, dependent: :destroy


  validates :start_date, :end_date, :total_amount,    presence: true
  # validate :end_mayor_to_star_is_possible?

  def end_mayor_to_star_is_possible?
    if start_date >= end_date
      errors.add(:end_date, 'no valid')
    end
  end
end
