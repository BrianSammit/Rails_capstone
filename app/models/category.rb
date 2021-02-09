class Category < ApplicationRecord
  validates :name, length: { in: 3..25 }, presence: true

  has_many :articles
end
