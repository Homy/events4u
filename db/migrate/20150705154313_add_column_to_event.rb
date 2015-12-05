class AddColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :dateStart, :datetime
    add_column :events, :dateEnd, :datetime
  end
end
