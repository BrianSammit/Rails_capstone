class Category < ApplicationRecord
  validates :name, length: { in: 3..25 }, presence: true
end
