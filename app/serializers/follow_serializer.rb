class FollowSerializer < ActiveModel::Serializer
  attributes :id, :following_id, :follower_id
  belongs_to :following, {class_name: 'User'}
  belongs_to :follower, {class_name: 'User'}
end
