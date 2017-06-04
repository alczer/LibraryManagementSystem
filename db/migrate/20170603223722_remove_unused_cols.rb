class RemoveUnusedCols < ActiveRecord::Migration[5.0]
  def change
  	remove_column :authors, :author_id
	remove_column :categories, :category_id
	remove_column :items, :item_id
	remove_column :item_authors, :item_author_id
	remove_column :item_categories, :item_category_id
	remove_column :loans, :loan_id
	remove_column :penalties, :penalty_id
	remove_column :publishers, :publisher_id
	remove_column :users, :user_id

  end
end
