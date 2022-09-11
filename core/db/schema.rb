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

ActiveRecord::Schema[7.0].define(version: 2022_09_11_001023) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string "name"
    t.string "version"
    t.bigint "editor_id", null: false
    t.string "support_type"
    t.date "release_date"
    t.date "support_end_date"
    t.date "support_end_date_ex"
    t.text "note"
    t.boolean "lts"
    t.bigint "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["editor_id"], name: "index_components_on_editor_id"
    t.index ["manager_id"], name: "index_components_on_manager_id"
  end

  create_table "editors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "components", "editors"
  add_foreign_key "components", "managers"
end
