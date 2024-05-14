class UserAuthenticate < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user
  before_validation :set_user

  # Methods

  private

  def set_user
    self.user = User.new(name: 'no name') if user.nil?
  end
end
