class AddImageToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :image_uid, :string
  end
end
