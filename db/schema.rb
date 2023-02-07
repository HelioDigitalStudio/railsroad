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

ActiveRecord::Schema[7.0].define(version: 2023_02_02_150418) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "career_paths", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "career_paths_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_paths_id"], name: "index_milestones_on_career_paths_id"
  end

  create_table "user_milestones", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "milestones_id", null: false
    t.date "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["milestones_id"], name: "index_user_milestones_on_milestones_id"
    t.index ["users_id"], name: "index_user_milestones_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_careers_paths", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "career_paths_id", null: false
    t.date "completed_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_paths_id"], name: "index_users_careers_paths_on_career_paths_id"
    t.index ["users_id"], name: "index_users_careers_paths_on_users_id"
  end

  add_foreign_key "milestones", "career_paths", column: "career_paths_id"
  add_foreign_key "user_milestones", "milestones", column: "milestones_id"
  add_foreign_key "user_milestones", "users", column: "users_id"
  add_foreign_key "users_careers_paths", "career_paths", column: "career_paths_id"
  add_foreign_key "users_careers_paths", "users", column: "users_id"
end
