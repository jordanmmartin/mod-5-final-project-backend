class CreateAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_table :annotations do |t|
      t.integer :photo_id
      t.string :name
      t.string :url
      t.string :category
      t.string :brand
      t.string :shade

      t.timestamps
    end
  end
end
