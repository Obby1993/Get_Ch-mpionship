class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :select_players
  has_many :teams, through: :select_players, dependent: :destroy
  has_many :events, dependent: :destroy
  has_one_attached :photo

  validates :age, :gender, presence: true, if: -> { :role == 'Joueur' || :role == 'Les deux' }
  validates :gender, presence: true, if: -> { :role == 'Joueur' || :role == 'Les deux' }
  validates :first_name, :last_name, :email, :phone_number, :address, presence: true
  # validates :company_name, presence: true, if: -> { self.organism == "Yes" }
  # validates :company_type, presence: true, if: -> { self.organism? == "Yes" }
end
