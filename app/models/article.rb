class Article < ApplicationRecord
    acts_as_votable
    belongs_to :user
    belongs_to :category
    has_one_attached :image
    validates :title, :body, presence: true
    validates :image, presence: true 
end
