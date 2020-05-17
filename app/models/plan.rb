class Plan < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :fovorites
  has_many :favorites_users, through: :farvorites, source: :user
end
