class AnnotationSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :brand, :shade, :url, :comment
  belongs_to :photo
end
