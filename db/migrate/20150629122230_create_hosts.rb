class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :phone
      t.text :about
      t.string :email
      t.string :url
      t.string :url
      t.float :latitude
      t.float :longtitude
      t.string :country
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
