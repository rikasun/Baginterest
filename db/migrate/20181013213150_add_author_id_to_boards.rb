class AddAuthorIdToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :author_id, :integer, null: false
    add_index :boards, :author_id
  end
end
