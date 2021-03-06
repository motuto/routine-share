class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :tweets
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
