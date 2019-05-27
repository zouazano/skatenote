class AddEvaluationToUserItems < ActiveRecord::Migration[5.2]
  def change
    add_column :user_items, :evaluation, :integer
  end
end
