class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :caption
      t.string :url

      t.timestamps
    end
  end
end
