class User < ApplicationRecord
  has_many :posts
  has_many :categories, through: :posts

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
