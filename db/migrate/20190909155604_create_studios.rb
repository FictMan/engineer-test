class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name, null: false
      t.string :details, null: false
      t.string :minimum_booking
      t.integer :studio_type, default: 0
      t.integer :studio_hours, null: false
      t.string :past_clients
      t.text :audio_samples
      t.string :amenities, null: false
      t.string :main_equipment
      t.text :rules
      t.boolean :agreement, default: false
      t.integer :price, null: false
      t.integer :ratings, default: 0
      t.boolean :verified, default: false
      t.boolean :premium, default: false

      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
