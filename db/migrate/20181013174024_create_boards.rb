class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :board_name, null: false
      t.timestamps
    end

    add_index :boards, :board_name
  end
end
