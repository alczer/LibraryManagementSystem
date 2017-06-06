class AddPublisherId3 < ActiveRecord::Migration[5.0]
  def change
  	add_column :items, :publisher_id, :integer
  	add_foreign_key :items, :publishers
  end
end
