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

ActiveRecord::Schema.define(version: 2019_11_21_210210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dreams", force: :cascade do |t|
    t.text "description"
    t.integer "mood"
    t.bigint "sleep_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sleep_id"], name: "index_dreams_on_sleep_id"
  end

  create_table "sleeps", force: :cascade do |t|
    t.string "start_day"
    t.string "start_time"
    t.string "end_day"
    t.string "end_time"
    t.text "note"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sleeps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dreams", "sleeps"
  add_foreign_key "sleeps", "users"
end
