class AddColumnsToEvent < ActiveRecord::Migration
  def change
    remove_column :events, :date_begin, :datetime
    remove_column :events, :date_end, :datetime
    add_column :events, :date_begin, :date
    add_column :events, :time_begin, :time
    add_column :events, :date_end, :date
    add_column :events, :time_end, :time
  end
end
