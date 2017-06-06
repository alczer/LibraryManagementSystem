class ChangeIntLimit < ActiveRecord::Migration[5.0]
  def change
  	change_column :items, :isbn, :integer, limit: 8
  end
end
