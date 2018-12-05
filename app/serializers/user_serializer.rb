class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :profile_photo
  has_many :photos
  has_many :likes
  has_many :follows, {class_name: 'Follow', foreign_key: 'follower_id' }
  has_many :followers, {class_name: 'Follow', foreign_key: 'following_id' }
  has_many :annotations, through: :photos
  attribute :name do
  "#{object.first_name} #{object.last_name}"
  end
end
