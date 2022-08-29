class Team < ApplicationRecord
  belongs_to :event
  has_many :user, through: :select_players

  validates :team_name, :gender, :nb_player, presence: true
  validates :nb_player, length: { minimum: 1 }
  validates :event_gender, uniqueness: ["Men", "Women", "mixed"]

end
