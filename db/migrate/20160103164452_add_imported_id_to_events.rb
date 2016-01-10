class AddImportedIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :imported_id, :integer, limit: 8
  end
end
