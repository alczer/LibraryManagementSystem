class ChangePrimaryKeysNames2 < ActiveRecord::Migration[5.0]
  def change

	#execute "ALTER TABLE `authors` DROP PRIMARY KEY"
	#execute "ALTER TABLE `categories` DROP PRIMARY KEY"
	#execute "ALTER TABLE `items` DROP PRIMARY KEY"
	#execute "ALTER TABLE `item_authors` DROP PRIMARY KEY"
	#execute "ALTER TABLE `item_categories` DROP PRIMARY KEY"
	#execute "ALTER TABLE `loans` DROP PRIMARY KEY"
	#execute "ALTER TABLE `penalties` DROP PRIMARY KEY"
	#execute "ALTER TABLE `publishers` DROP PRIMARY KEY"
	#execute "ALTER TABLE `users` DROP PRIMARY KEY"


	remove_column :authors, :id_author
	remove_column :categories, :id_category
	remove_column :items, :id_item
	remove_column :item_authors, :id_item_author
	remove_column :item_categories, :id_item_category
	remove_column :loans, :id_loan
	remove_column :penalties, :id_penalty
	remove_column :publishers, :id_publisher
	remove_column :users, :id_user

	add_column :authors, :id, :primary_key
	add_column :categories, :id, :primary_key
	add_column :items, :id, :primary_key
	add_column :item_authors, :id, :primary_key
	add_column :item_categories, :id, :primary_key
	add_column :loans, :id, :primary_key
	add_column :penalties, :id, :primary_key
	add_column :publishers, :id, :primary_key
	add_column :users, :id, :primary_key

  end
end
