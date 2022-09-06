class SelectPlayer < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :user_id, uniqueness: { scope: :team_id, message: "is already in the team" }
end
