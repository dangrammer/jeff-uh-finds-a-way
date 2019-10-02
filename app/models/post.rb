class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, :content, :user_id, :category_id, presence: true
  validates :title, length: {in: 1..100 }
  validates :content, length: {maximum: 2000}
  
end
