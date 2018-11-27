class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :caption, :url
  belongs_to :user
  has_many :annotations
end
