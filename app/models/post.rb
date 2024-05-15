class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture_id, optional: true

  validates :title, presence: true
  validates :rating, presence: true, length: {maximum: 32}
  validates :body, length: {maximum: 256}
end
