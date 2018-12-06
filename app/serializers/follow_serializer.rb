class FollowSerializer < ActiveModel::Serializer
  attributes :id, :following_id, :follower_id
  belongs_to :following, {class_name: 'User'}
  belongs_to :follower, {class_name: 'User'}
  attribute :follower_photo_ids do
    @user = User.find(object.following_id)
    @user.photos.map { |photo| {photo_id: photo.id, created_at: photo.created_at} }
  end
end
