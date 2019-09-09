class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  enum status: [:active, :canceled, :rejected]

  validates :date, :start_time, :end_time, presence: true
end
