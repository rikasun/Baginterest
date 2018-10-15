class CreateUserboards < ActiveRecord::Migration[5.2]
  def change
    create_table :userboards do |t|
      t.integer :user_id, null: false
      t.integer :board_id, null: false
      t.timestamps
    end

    add_index :userboards, :user_id
    add_index :userboards, :board_id
  end
end
