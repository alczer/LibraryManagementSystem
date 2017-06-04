class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :isbn
      t.string :language
      t.string :state
      t.date :date_pub
      t.string :item_img_file_name
      t.string :item_img_content_type
      t.integer :item_img_file_size
      t.datetime :item_img_updated_at
      t.timestamps
    end
  end
end
