class AddItemCategories < ActiveRecord::Migration[5.0]
  def change
  	add_index :item_categories, [:item_id, :category_id], unique: true
  end
end
