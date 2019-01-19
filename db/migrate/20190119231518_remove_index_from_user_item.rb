class RemoveIndexFromUserItem < ActiveRecord::Migration[5.2]
  def change
    remove_reference :user_items, :user, index: true, foreign_key: true
    remove_reference :user_items, :item, index: true, foreign_key: true
  end
end
