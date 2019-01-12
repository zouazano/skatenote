class RenameTriedItemsToWantItems < ActiveRecord::Migration[5.2]
  def change
  	rename_table :tried_items, :want_items
  end
end
