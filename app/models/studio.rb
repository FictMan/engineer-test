class Studio < ApplicationRecord
  has_many :bookings
  has_many :photos
  has_many :reviews
  has_many :requests

  belongs_to :user

  enum studio_type: %w[rehearsal_space podcast_space home_studio MidLevel_tudio TopLine_studio]

  validates :name, :details, :studio_hours, :amenities, :price, presence: true
end
