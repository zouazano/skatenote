class AddValuesToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :value, :integer
  end
end
