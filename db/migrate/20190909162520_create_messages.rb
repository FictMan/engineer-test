class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :messages_type, default: 0, index: true
      t.string :from, null: false
      t.string :to, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
