class User < ApplicationRecord
  has_one :user_authenticates
  has_many :posts
  belongs_to :prefecture, optional: true

  devise :authenticatable
end
