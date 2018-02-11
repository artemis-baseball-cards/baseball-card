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

ActiveRecord::Schema.define(version: 20180211070717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "position"
    t.string "meetings"
    t.string "emails"
    t.string "formatting"
    t.string "other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "company_goals"
    t.string "personal_dev_goals"
    t.text "future_work_opportunities"
  end

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
    t.boolean "remote"
  end

  create_table "employees_industries", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "industry_id"
  end

  create_table "employees_projects", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "project_id"
  end

  create_table "employees_roles", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "role_id"
  end

  create_table "employees_skills", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "employee_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
  end

  create_table "industries_projects", force: :cascade do |t|
    t.integer "industry_id"
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
    t.text "objective"
    t.text "goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "industry"
    t.string "role", array: true
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "company_id"
  end

  create_table "projects_roles", force: :cascade do |t|
    t.integer "role_id"
    t.integer "project_id"
  end

  create_table "projects_skills", force: :cascade do |t|
    t.integer "skill_id"
    t.integer "project_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
  end

  create_table "skills", force: :cascade do |t|
    t.string "description"
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
