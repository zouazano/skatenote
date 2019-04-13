class AddBooleanToItems < ActiveRecord::Migration[5.2]
  def change
  	add_column :items, :authorized, :boolean, default: false, null: false
  end
end
