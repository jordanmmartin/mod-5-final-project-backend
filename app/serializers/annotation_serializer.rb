class AnnotationSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :brand, :shade, :url
  belongs_to :photo
end
