class DeleteTAbles1 < ActiveRecord::Migration[5.0]
  def change
  	drop_table :items
  	drop_table :item_authors
  	drop_table :authors



  	
  end
end
