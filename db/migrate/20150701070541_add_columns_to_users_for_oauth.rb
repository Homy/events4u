class AddColumnsToUsersForOauth < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :confirmed_at, :datetime
  end
end
