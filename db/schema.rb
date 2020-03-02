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

ActiveRecord::Schema.define(version: 2020_02_24_165943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "long_notes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_long_notes_on_user_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "client_name"
    t.string "time_spent"
    t.integer "money_earned"
    t.text "note"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_objectives_on_user_id"
  end

  create_table "short_notes", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_short_notes_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.boolean "status", default: false
    t.bigint "to_do_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["to_do_list_id"], name: "index_tasks_on_to_do_list_id"
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_to_do_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "long_notes", "users"
  add_foreign_key "missions", "users"
  add_foreign_key "objectives", "users"
  add_foreign_key "short_notes", "users"
  add_foreign_key "tasks", "to_do_lists"
  add_foreign_key "to_do_lists", "users"
end
