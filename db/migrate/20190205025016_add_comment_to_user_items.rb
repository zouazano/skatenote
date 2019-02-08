class AddCommentToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :comment, :text
  end
end
