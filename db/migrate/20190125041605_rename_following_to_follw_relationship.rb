class RenameFollowingToFollwRelationship < ActiveRecord::Migration[5.2]
  def change
    rename_table :followings, :follow_relationships
  end
end
