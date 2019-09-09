class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address, null: false, uniq: true
      t.string :building, null: false

      t.float :latitude, null: false
      t.float :longitude, null: false

      t.integer :postal_code, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
