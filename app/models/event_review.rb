class EventReview < ApplicationRecord
  belongs_to :event
  validates :content, length: { minimum: 20 }
  validates :reviewer, presence: true
end
