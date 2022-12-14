class Review < ApplicationRecord
  belongs_to :user
  validates :content, length: { minimum: 20 }
  validates :reviewer, presence: true
end
