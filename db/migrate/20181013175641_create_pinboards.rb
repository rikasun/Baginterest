class CreatePinboards < ActiveRecord::Migration[5.2]
  def change
    create_table :pinboards do |t|
      t.integer :pin_id, null: false
      t.integer :board_id, null: false
      t.timestamps
    end

    add_index :pinboards, :pin_id
    add_index :pinboards, :board_id
  end
end
