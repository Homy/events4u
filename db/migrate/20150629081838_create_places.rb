class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :phone
      t.text :about
      t.string :email
      t.float :latitude
      t.float :longitude
      t.string :country
      t.string :city
      t.string :street_address

      t.timestamps null: false
    end
  end
end
