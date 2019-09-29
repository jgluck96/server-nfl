class RemoveRoomColumnFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :room_id
    add_column :messages, :conversation_id, :integer
  end
end
