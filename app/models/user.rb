class User < ApplicationRecord
  validates :name, :username, :email, :password, :password_confirmation, presence: true
  validates :name, :username, length: { in: 3..10 }
  validates :username, format: { with: /\A[\w-]+\z/, message: "your format requirements" }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
end
