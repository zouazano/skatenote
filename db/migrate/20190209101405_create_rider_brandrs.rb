class CreateRiderBrandrs < ActiveRecord::Migration[5.2]
  def change
    create_table :rider_brands do |t|
      t.references :brand, foreign_key: true
      t.references :rider, foreign_key: true

      t.timestamps
    end
  end
end
