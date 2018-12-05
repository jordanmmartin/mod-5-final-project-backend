class ChangeFollowTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :follows, :user_id, :following_id
  end
end
