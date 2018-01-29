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

ActiveRecord::Schema.define(version: 20180129194751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.text "personal_development_plan"
    t.string "life_quote"
    t.string "quote"
    t.string "motto"
    t.string "strength"
    t.text "myers_briggs"
    t.text "birkman"
    t.string "vision"
    t.string "short_term_goal"
    t.string "long_term_goal"
    t.string "area_to_develop"
    t.string "area_to_develop_two"
    t.string "area_to_develop_three"
    t.string "objective_setting"
    t.string "personal_goal"
    t.string "personal_goal_two"
    t.string "personal_goal_three"
    t.text "mission"
    t.text "expectation"
    t.text "awesome"
    t.string "need"
    t.text "receive_feedback"
    t.text "development"
    t.boolean "manager", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "start_date"
  end

  create_table "employees_projects", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "project_id"
  end

  create_table "others", force: :cascade do |t|
    t.string "occasion"
    t.string "end_project"
    t.string "birthday"
    t.text "pulse_survey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "start_date"
    t.string "end_date"
    t.string "project_type"
    t.string "role"
    t.string "key_skill"
    t.text "objective"
    t.text "goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
