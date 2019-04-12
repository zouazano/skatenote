class ChangeColumnToNotNull < ActiveRecord::Migration[5.2]
  def up
    change_column_null :items, :name, true
  end

  def down
    change_column_null :items, :name
  end
end
