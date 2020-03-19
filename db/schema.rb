# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_19_010852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "item_outfits", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_item_outfits_on_item_id"
    t.index ["outfit_id"], name: "index_item_outfits_on_outfit_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "category"
    t.string "sub_category"
    t.string "color"
    t.string "size"
    t.string "brand"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "outfit_boards", force: :cascade do |t|
    t.bigint "outfit_id", null: false
    t.bigint "board_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_outfit_boards_on_board_id"
    t.index ["outfit_id"], name: "index_outfit_boards_on_outfit_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.integer "times_worn", default: 0
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_outfits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boards", "users"
  add_foreign_key "item_outfits", "items"
  add_foreign_key "item_outfits", "outfits"
  add_foreign_key "items", "users"
  add_foreign_key "outfit_boards", "boards"
  add_foreign_key "outfit_boards", "outfits"
  add_foreign_key "outfits", "users"
end
