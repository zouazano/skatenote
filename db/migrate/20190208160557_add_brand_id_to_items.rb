class AddBrandIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :brand_id, :integer
  end
end
