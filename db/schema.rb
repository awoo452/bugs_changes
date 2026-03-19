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

ActiveRecord::Schema[8.1].define(version: 2026_03_19_141238) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "bugs", force: :cascade do |t|
    t.text "actual_behavior"
    t.datetime "created_at", null: false
    t.text "details", null: false
    t.string "environment"
    t.text "expected_behavior"
    t.string "reporter_email", null: false
    t.string "reporter_name", null: false
    t.string "severity", default: "medium", null: false
    t.string "status", default: "new", null: false
    t.text "steps_to_reproduce"
    t.string "summary", null: false
    t.datetime "updated_at", null: false
  end

  create_table "change_requests", force: :cascade do |t|
    t.text "acceptance_criteria"
    t.text "benefit"
    t.datetime "created_at", null: false
    t.text "details", null: false
    t.string "priority", default: "medium", null: false
    t.string "requester_email", null: false
    t.string "requester_name", null: false
    t.string "status", default: "new", null: false
    t.string "summary", null: false
    t.string "target_release"
    t.datetime "updated_at", null: false
  end
end
