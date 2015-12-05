class RenameAddressToStreetaddressInHost < ActiveRecord::Migration
  def change
    rename_column :hosts, :address, :street_address
  end
end
