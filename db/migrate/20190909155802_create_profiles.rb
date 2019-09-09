class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :bio
      t.string :phone_number
      t.references :user, foreign_key: true, uniq: true

      t.string :website_url
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :streaming_platform_url
      
      t.timestamps
    end
  end
end
