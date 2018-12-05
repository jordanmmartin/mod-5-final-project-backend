class FollowSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :follower_id
  belongs_to :user
  belongs_to :follower, {class_name: 'User'}
end
