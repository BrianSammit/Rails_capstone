class Article < ApplicationRecord
  acts_as_votable
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  validates :title, length: { in: 3..25 }, presence: true
  validates :body, length: { maximum: 500 }, presence: true

  after_commit :add_default_image, on: %i[create update]

  private

  def add_default_image
    return if image.attached?

    image.attach(
      io: File.open(
        Rails.root.join(
          'app', 'assets', 'images', 'seed', 'default_image.jpg'
        )
      ),
      filename: 'default_image.jpg',
      content_type: 'image/jpg'
    )
  end
end
