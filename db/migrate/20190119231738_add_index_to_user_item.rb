class AddIndexToUserItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_items, :user, foreign_key: true
    add_reference :user_items, :item, foreign_key: true
    
    add_index :user_items, [:user_id, :item_id], unique: true
  end
end
