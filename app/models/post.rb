class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture, optional: true
  has_many_attached :images

  validates :rating, presence: true
  validates :title, presence: true, length: { maximum: 32 }
  validates :body, length: { maximum: 256 }
  validates :images, content_type: %i[png jpg jpeg], limit: { max: 4 }

  scope :with_coordinates, -> { where.not(latitude: nil, longitude: nil) }
  def self.ransackable_associations(_auth_object = nil)
    %w[user prefecture]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[rating title body local place_id latitude longitude user_id prefecture_id created_at updated_at]
  end
end
