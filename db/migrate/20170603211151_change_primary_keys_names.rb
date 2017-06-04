class ChangePrimaryKeysNames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :authors, :id_author, :author_id
  	rename_column :categories, :id_category, :category_id
  	rename_column :items, :id_item, :item_id
  	rename_column :items, :id_publisher, :publisher_id
  	rename_column :item_authors, :id_item_author, :item_author_id
  	rename_column :item_authors, :id_item, :item_id
  	rename_column :item_authors, :id_author, :author_id


    rename_column :item_categories, :id_item, :item_id
    rename_column :item_categories, :id_item_category, :item_category_id
    rename_column :item_categories, :id_category, :category_id

    rename_column :loans, :id_loan, :loan_id
    rename_column :loans, :id_item, :item_id
    rename_column :loans, :id_user, :user_id
    rename_column :loans, :id_librarian, :librarian_id

    rename_column :penalties, :id_penalty, :penalty_id
    rename_column :penalties, :id_client, :client_id
    rename_column :penalties, :id_loan, :loan_id

    rename_column :publishers, :id_publisher, :publisher_id
    rename_column :users, :id_user, :user_id



  end
end
