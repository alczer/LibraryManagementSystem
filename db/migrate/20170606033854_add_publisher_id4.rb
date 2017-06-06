class AddPublisherId4 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :items, :publisher_id
  	add_reference :items, :publisher, index: true
  end
end
