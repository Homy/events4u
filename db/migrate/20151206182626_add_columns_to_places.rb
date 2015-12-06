class AddColumnsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :place_id, :integer, limit: 8 # BIGINT as per http://stackoverflow.com/questions/33517403/integer-out-of-range
    add_column :places, :importedFrom, :string, default: "Created manually"
  end
end
