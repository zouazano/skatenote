class AddSizeToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :size, :float
    add_column :user_items, :name, :string
    add_column :user_items, :shop, :string
  end
end
