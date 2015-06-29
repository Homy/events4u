class FixColumnNameLongitudeInHost < ActiveRecord::Migration
  def change
    rename_column :hosts, :longtitude, :longitude
  end
end
