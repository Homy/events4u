class RemoveColumnsFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :date_begin, :date
    remove_column :events, :time_begin, :time
    remove_column :events, :date_end, :date
    remove_column :events, :time_end, :time
  end
end
