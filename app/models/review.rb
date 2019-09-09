class Review < ApplicationRecord
  belongs_to :user
  belongs_to :studio

  enum for: %w[customer studio]

  validates :text, :for, presence: true
end
