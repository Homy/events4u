class CreateImportedEvents < ActiveRecord::Migration
  def change
    create_table :imported_events do |t|
      t.string :name
      t.text :about
      t.datetime :dateStart
      t.datetime :dateEnd
      t.string :url
      t.references :host, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true
      t.references :event_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
