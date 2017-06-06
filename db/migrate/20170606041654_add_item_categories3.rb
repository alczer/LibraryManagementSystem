class AddItemCategories3 < ActiveRecord::Migration[5.0]
  def change
  	add_index :item_categories, :item_id
  	add_index :item_categories, :category_id
  end
end
