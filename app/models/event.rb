class Event < ApplicationRecord
  has_many :teams, dependent: :destroy
  belongs_to :user
  has_many_attached :photos

  validates :event_name, :nb_players_team, :event_start, :event_end, :event_address, :event_gender, :deadline_register, :nb_team, presence: true
  validates :event_name, uniqueness: true
  validates :event_gender, inclusion: { in: ["Men", "Women", "Mixed"] }
  validates :event_end, comparison: { greater_than_or_equal_to: :event_start }
  validate :event_start_cannot_be_in_the_past
  validates :deadline_register, comparison: { less_than_or_equal_to: :event_start }
  validates :nb_players_team, length: { minimum: 1 }

  geocoded_by :event_address
  after_validation :geocode, if: :will_save_change_to_event_address?

  private

  def event_start_cannot_be_in_the_past
    errors.add(:event_start, "can't be in the past") if event_start < Date.today
  end
end
