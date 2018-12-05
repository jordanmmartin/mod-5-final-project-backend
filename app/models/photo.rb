class Photo < ApplicationRecord
  belongs_to :user
  has_many :annotations
  has_many :likes
end
