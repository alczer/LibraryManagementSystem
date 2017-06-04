class Deletestuff < ActiveRecord::Migration[5.0]
  def change
  	remove_index :item_authors, [:item_id, :author_id]
  end
end
