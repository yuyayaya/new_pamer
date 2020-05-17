class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  enum hobby: { movie: 0, sport: 1, music: 2, cooking: 3, game:4 }
  has_many :plans
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :favorites_plans, through: :favorites, source: :plan
end
