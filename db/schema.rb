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

ActiveRecord::Schema.define(version: 2019_02_08_162448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follow_relationships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "follow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follow_id"], name: "index_follow_relationships_on_follow_id"
    t.index ["user_id", "follow_id"], name: "index_follow_relationships_on_user_id_and_follow_id", unique: true
    t.index ["user_id"], name: "index_follow_relationships_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "amazon_id"
    t.integer "category"
    t.float "size"
    t.integer "brand_id"
    t.integer "rider_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "item_id"
    t.integer "value"
    t.text "comment"
    t.index ["item_id"], name: "index_user_items_on_item_id"
    t.index ["user_id", "item_id"], name: "index_user_items_on_user_id_and_item_id", unique: true
    t.index ["user_id"], name: "index_user_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "image_uid"
    t.string "image_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "want_items", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_want_items_on_item_id"
    t.index ["user_id"], name: "index_want_items_on_user_id"
  end

  add_foreign_key "follow_relationships", "users"
  add_foreign_key "follow_relationships", "users", column: "follow_id"
  add_foreign_key "user_items", "items"
  add_foreign_key "user_items", "users"
  add_foreign_key "want_items", "items"
  add_foreign_key "want_items", "users"
end
