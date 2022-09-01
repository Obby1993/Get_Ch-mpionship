class Team < ApplicationRecord
  belongs_to :event, dependent: :destroy
  has_many :select_players
  has_many :user, through: :select_players, dependent: :destroy

  validates :team_name, :gender, :nb_player, presence: true
  validates :nb_player, length: { minimum: 1 }
  validates :gender, inclusion: { in: ["Homme", "Femme", "Mixte"] }

end
