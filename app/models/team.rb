class Team < ApplicationRecord
  belongs_to :event
  has_many :select_players, dependent: :destroy
  has_many :user, through: :select_players

  validates :team_name, :gender, :nb_player, presence: true
  validates :nb_player, length: { minimum: 1 }
  validates :gender, inclusion: { in: ["Homme", "Femme", "Mixte"] }

end
