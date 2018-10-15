class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.integer :author_id, null: false
      t.string :description
      t.string :url
      t.timestamps
    end

    add_index :pins, :author_id
  end
end
