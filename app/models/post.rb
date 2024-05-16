class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture, optional: true

  validates :rating, presence: true
  validates :title, presence: true, length: {maximum: 16}
  validates :body, length: {maximum: 256}

  has_many_attached :images
end
