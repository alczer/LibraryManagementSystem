class Rename < ActiveRecord::Migration[5.0]
   def self.up
    rename_table :user, :users
  end

  def self.down
    rename_table :users, :user
  end
end
