class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :users, foreign_key: true, index: true
      t.references :studios, foreign_key: true, index: true

      t.integer :status, default: 0
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
