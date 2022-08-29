class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teams, through: :select_players
  has_many :events
  has_one_attached :photo

  validates :first_name, :last_name, :email, :phone_number, :age, :gender, :address, presence: true
  validates :event_gender, uniqueness: ["Man", "Woman"]
end
