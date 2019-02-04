class AddAmazonIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :amazon_id, :string
  end
end
