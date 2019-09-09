class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: true, uniq: true
      t.string :password_digest, null: false
      t.string :confirmation_token
      t.datetime :confirmation_at

      t.timestamps
    end
  end
end
