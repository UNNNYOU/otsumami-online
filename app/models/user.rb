class User < ApplicationRecord
  has_one :user_authenticates
  belongs_to :prefecture, optional: true

  devise :authenticatable
end
