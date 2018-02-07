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

ActiveRecord::Schema.define(version: 20180207010004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "life_quote"
    t.string "quote"
    t.string "motto"
    t.string "strength"
    t.text "myers_briggs"
    t.text "birkman"
    t.string "vision"
    t.string "short_term_goal"
    t.string "long_term_goal"
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
    t.integer "user_id"
    t.string "skills", array: true
    t.string "industry_experience", array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "project_roles", array: true
    t.string "country"
    t.string "state"
    t.string "city"
    t.date "start_date"
    t.boolean "willing_to_travel"
    t.string "areas_to_develop"
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
    t.integer "employee_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "start_date"
    t.string "end_date"
    t.string "project_type"
    t.string "key_skill"
    t.text "objective"
    t.text "goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "industry"
    t.string "role", array: true
  end

  create_table "skills_employees", force: :cascade do |t|
    t.integer "skills_id"
    t.integer "employees_id"
  end

  create_table "skills_projects", force: :cascade do |t|
    t.integer "skills_id"
    t.integer "projects_id"
  end

  create_table "users", force: :cascade do |t|
    t.boolean "superadmin_role", default: false
    t.boolean "boolean", default: true
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "approved", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
