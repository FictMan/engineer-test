# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_09_171616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "studios_id"
    t.integer "status", default: 0
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studios_id"], name: "index_bookings_on_studios_id"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address", null: false
    t.string "building", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.integer "postal_code", null: false
    t.string "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "messages_type", default: 0
    t.string "from", null: false
    t.string "to", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["messages_type"], name: "index_messages_on_messages_type"
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.bigint "studios_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studios_id"], name: "index_photos_on_studios_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "bio"
    t.string "phone_number"
    t.bigint "user_id"
    t.string "website_url"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "instagram_url"
    t.string "streaming_platform_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "studio_id"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "price"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_requests_on_studio_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "studio_id"
    t.text "text", null: false
    t.integer "for", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name", null: false
    t.string "details", null: false
    t.string "minimum_booking"
    t.integer "studio_type", default: 0
    t.integer "studio_hours", null: false
    t.string "past_clients"
    t.text "audio_samples"
    t.string "amenities", null: false
    t.string "main_equipment"
    t.text "rules"
    t.boolean "agreement", default: false
    t.integer "price", null: false
    t.integer "ratings", default: 0
    t.boolean "verified", default: false
    t.boolean "premium", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "confirmation_token"
    t.datetime "confirmation_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "bookings", "studios", column: "studios_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "listings", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "requests", "studios"
  add_foreign_key "requests", "users"
  add_foreign_key "reviews", "studios"
  add_foreign_key "reviews", "users"
  add_foreign_key "studios", "users"
end
