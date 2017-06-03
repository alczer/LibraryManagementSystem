class ChangeTableNames < ActiveRecord::Migration[5.0]
  def change
  	drop_table :item_categories
  	drop_table :authors
  	rename_table :author, :authors
  	rename_table :category, :categories
  	rename_table :item, :items
    rename_table :publisher, :publishers
    rename_table :item_author, :item_authors
    rename_table :item_category, :item_categories
    rename_table :loan, :loans
  end
end
