class FixColumnsNamesDateInEvent < ActiveRecord::Migration
  def change
    rename_column :events, :dateBegin, :date_begin
    rename_column :events, :dateEnd, :date_end
  end
end

