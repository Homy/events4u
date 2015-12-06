class AddColumnsToImportedEvents < ActiveRecord::Migration
  def change
    add_column :imported_events, :iplace_name, :string
    add_column :imported_events, :iplace_latitude, :float
    add_column :imported_events, :iplace_longitude, :float
    add_column :imported_events, :iplace_country, :string
    add_column :imported_events, :iplace_city, :string
    add_column :imported_events, :iplace_id, :integer, limit: 8 # BIGINT as per http://stackoverflow.com/questions/33517403/integer-out-of-range
    add_column :events, :importedFrom, :string
  end
end
