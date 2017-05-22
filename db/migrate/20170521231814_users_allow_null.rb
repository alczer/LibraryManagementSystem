class UsersAllowNull < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :date_active_from, :date, :null => true
  	change_column :users, :date_active_to, :date, :null => true
  end
end
