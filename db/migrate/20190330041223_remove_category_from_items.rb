class RemoveCategoryFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :category, :integer
  end
end
