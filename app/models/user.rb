class User < ApplicationRecord
  has_secure_password
  has_many :photos
  has_many :annotations, through: :photos
  validates :username, uniqueness: { case_sensitive: false }
end
