class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :author_id
      t.integer :event_id
      t.string :title
      t.text :content
      t.boolean :is_draft

      t.timestamps null: false
    end
  end
end
