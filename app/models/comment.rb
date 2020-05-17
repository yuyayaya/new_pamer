class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :plan
  
  validates :content, presence: true
end
