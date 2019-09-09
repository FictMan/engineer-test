class Message < ApplicationRecord
  belongs_to :user

  enum messages_type: %w[requests booking]

  validations :from, :to, :body, presence: true
end
