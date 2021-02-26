class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :helicopter
  has_many :reviews, dependent: :destroy
end
