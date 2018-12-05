class LikeSerializer < ActiveModel::Serializer
  attributes :id, :photo_id, :user_id
  belongs_to :photo
  belongs_to :user
  attribute :photo do
    Photo.find(object.photo_id)
  end
end
