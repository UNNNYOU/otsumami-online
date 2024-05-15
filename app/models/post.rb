class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture_id, optional: true

  validates :rating, presence: true, length: {maximum: 32}
  validates :title, presence: true
  validates :body, length: {maximum: 256}
end
