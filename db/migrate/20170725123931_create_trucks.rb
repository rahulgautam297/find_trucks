class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.integer :facility_type
      t.string :address
      t.text :location
      t.text :food_items
      t.string :operational_time

      t.timestamps
    end
  end
end
