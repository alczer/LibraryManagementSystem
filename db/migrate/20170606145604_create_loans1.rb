class CreateLoans1 < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.integer "item_id",      null: false
      t.integer "user_id",      null: false
      t.date    "date_in",      null: false
      t.date    "date_out",     null: false
      t.integer "librarian_id", null: false
    end
  end
end

