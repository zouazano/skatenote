class ChangeDatatypeValueOfUserItems < ActiveRecord::Migration[5.2]
  def change
  	change_column :user_items, :value, :float
  end
end
