# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_20_202151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "parcel_number"
    t.string "name"
    t.string "address_number"
    t.string "city"
    t.string "zip_code"
    t.text "notes"
    t.boolean "do_not_call"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "checkouts", force: :cascade do |t|
    t.datetime "start"
    t.datetime "finish"
    t.bigint "user_id", null: false
    t.bigint "territory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["territory_id"], name: "index_checkouts_on_territory_id"
    t.index ["user_id"], name: "index_checkouts_on_user_id"
  end

  create_table "territories", force: :cascade do |t|
    t.integer "number"
    t.string "type"
    t.string "name"
    t.datetime "last_audited"
    t.datetime "last_worked"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.boolean "baptized"
    t.boolean "publisher"
    t.boolean "elder"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "checkouts", "territories"
  add_foreign_key "checkouts", "users"
end
