class User < ApplicationRecord
  has_secure_password

  has_one :profile

  has_many :studios
  has_many :reviews
  has_many :messages
  has_many :bookings
  has_many :listings
  has_many :requests

  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
