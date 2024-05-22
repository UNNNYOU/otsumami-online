class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture, optional: true
  has_many_attached :images

  validates :rating, presence: true
  validates :title, presence: true, length: {maximum: 32}
  validates :body, length: {maximum: 256}
  validates :images, content_type: %i[png jpg jpeg], limit: {max: 4}

  scope :with_coordinates, -> { where.not(latitude: nil, longitude: nil) }
end
