class User < ApplicationRecord
  has_many :posts
  has_many :categories, through: :posts
  has_many :comments, dependent: :destroy
  has_secure_password
  
  validates :first_name, :last_name, :handle, :location, presence: true
  validates :first_name, :last_name, :handle, length: {in: 2..20}

  validates :location, length: {maximum: 50}
  
  validates :password, presence: true, confirmation: true, length: {in: 5..15}, on: :create
  validates :password, confirmation: true, length: {in: 5..15}, allow_blank: true, on: :update
  
  validates :handle, uniqueness: true
  
  validates :bio, length: {maximum: 150}
  
  validates_format_of :first_name, :last_name, :location, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
