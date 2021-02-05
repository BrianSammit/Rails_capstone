class Article < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :categories
  has_one_attached :image
  validates :title, length: { in: 3..25 }, presence: true
  validates :body, length: { maximum: 500 }, presence: true
  validates :image, presence: true
end
