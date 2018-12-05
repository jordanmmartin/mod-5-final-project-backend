class AddCommentsToAnnotations < ActiveRecord::Migration[5.2]
  def change
    add_column :annotations, :comment, :string
  end
end
