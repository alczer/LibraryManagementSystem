class CreateItemAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :item_authors do |t|
      t.references :item, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
