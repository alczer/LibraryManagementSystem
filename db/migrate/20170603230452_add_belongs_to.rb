class AddBelongsTo < ActiveRecord::Migration[5.0]
  def change
  	remove_column :item_authors, :item_id
  	remove_column :item_authors, :author_id
  	add_reference :item_authors, :item, index: true
  	add_reference :item_authors, :author, index: true

  end
end
