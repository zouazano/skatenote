class DropTableFollowRelationships < ActiveRecord::Migration[5.2]
  def change
  	drop_table :follow_relationships
  end
end