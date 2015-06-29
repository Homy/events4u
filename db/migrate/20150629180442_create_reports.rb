class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :content
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
