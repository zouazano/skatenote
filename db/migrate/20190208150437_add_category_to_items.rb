class AddCategoryToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :category, :integer
    add_column :items, :size, :float
  end
end
