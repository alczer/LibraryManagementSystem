class AddIndex < ActiveRecord::Migration[5.0]
  def change
  	add_index :item_authors, [:item_id, :author_id], unique: true
  end
end
