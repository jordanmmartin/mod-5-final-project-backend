class User < ApplicationRecord
  has_secure_password
  has_many :photos
  has_many :likes
  has_many :follows, {class_name: 'Follow', foreign_key: 'follower_id' }
  has_many :followers, {class_name: 'Follow', foreign_key: 'following_id' }
  has_many :annotations, through: :photos
  validates :username, uniqueness: { case_sensitive: false }
end
