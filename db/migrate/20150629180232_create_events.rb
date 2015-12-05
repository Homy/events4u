class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :about
      t.datetime :dateBegin
      t.datetime :dateEnd
      t.string :url
      t.references :host, index: true, foreign_key: true
      t.references :event_type, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
