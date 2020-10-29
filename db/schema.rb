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

ActiveRecord::Schema.define(version: 2020_10_29_063314) do

  create_table "free_cupons", force: :cascade do |t|
    t.string "compony"
    t.string "serial_number"
    t.string "phone"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"string\"", name: "index_free_cupons_on_string", unique: true
    t.index ["compony"], name: "index_free_cupons_on_compony", unique: true
    t.index ["user_id"], name: "index_free_cupons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "account"
    t.string "password"
    t.string "email"
    t.string "nickname"
    t.string "gender"
    t.string "state"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account"], name: "index_users_on_account", unique: true
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "free_cupons", "users"
end
