class Request < ApplicationRecord
  belongs_to :customer
  belongs_to :studio

  enum status: [:active, :canceled, :rejected]

  validates_presence_of :date, :start_time, :end_time, :price, :status
end
