class DeleteUserItemIdUniqIndexFromUserItems < ActiveRecord::Migration[5.2]
  def change
  	remove_index :user_items, [:user_id, :item_id]
  	add_index :user_items, [:user_id, :item_id]
  end
end
