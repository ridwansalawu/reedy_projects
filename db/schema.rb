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

ActiveRecord::Schema.define(version: 2019_10_27_111136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "applicants", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "DOB"
    t.string "email"
    t.string "phone"
    t.string "address"
  end

  create_table "assets", force: :cascade do |t|
    t.string "asset_code"
    t.string "address"
    t.string "pit_id"
    t.string "cp_page"
    t.string "asset_type"
    t.string "is_acm"
    t.string "initial_config"
    t.string "proposed_config"
    t.string "actual_config"
    t.string "status"
    t.string "workers"
    t.string "actions"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "DOB"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.string "next_of_kin"
    t.string "next_of_kin_address"
    t.string "next_of_kin_phone"
    t.string "abn"
    t.string "tfn", limit: 50
    t.string "bsb"
    t.string "account_no", limit: 15
    t.string "rank"
    t.string "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rates", force: :cascade do |t|
    t.string "grade"
    t.decimal "xlarge_pit", precision: 7, scale: 2
    t.decimal "large_pit", precision: 7, scale: 2
    t.decimal "medium_pit", precision: 7, scale: 2
    t.decimal "xlarge_acm", precision: 7, scale: 2
    t.decimal "large_acm", precision: 7, scale: 2
    t.decimal "medium_acm", precision: 7, scale: 2
    t.decimal "trench", precision: 7, scale: 2
    t.decimal "concrete", precision: 7, scale: 2
    t.decimal "bitumen", precision: 7, scale: 2
    t.decimal "paver", precision: 7, scale: 2
    t.decimal "brick", precision: 7, scale: 2
    t.decimal "rock", precision: 7, scale: 2
    t.decimal "riser", precision: 7, scale: 2
    t.decimal "night", precision: 7, scale: 2
    t.decimal "extras", precision: 7, scale: 2
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "username", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
