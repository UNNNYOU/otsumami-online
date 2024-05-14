class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture_id, optional: true
end
