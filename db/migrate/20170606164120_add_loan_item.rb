class AddLoanItem < ActiveRecord::Migration[5.0]
  def change
    add_index :loans, :item_id
    add_index :loans, :user_id
  end
end
