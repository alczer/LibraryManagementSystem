class DeleteLoans < ActiveRecord::Migration[5.0]
  def change
    drop_table :loans
  end
end
