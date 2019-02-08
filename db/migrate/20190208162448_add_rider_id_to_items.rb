class AddRiderIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :rider_id, :integer
  end
end
