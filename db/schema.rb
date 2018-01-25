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

ActiveRecord::Schema.define(version: 20180125003306) do


  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.date "start_date"
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
    t.string "objective_setting"
    t.string "personal_goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "mission"
    t.text "expectation"
    t.text "awesome"
    t.string "need"
    t.text "receive_feedback"
    t.text "development"
    t.string "area_to_develop_two"
    t.string "area_to_develop_three"
    t.string "area_to_develop_four"
    t.string "personal_goal_two"
    t.string "personal_goal_three"
    t.string "personal_goal_four"
  end

  create_table "employees_projects", id: false, force: :cascade do |t|
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
    t.date "start_date"
    t.date "end_date"
    t.string "project_type"
    t.string "role"
    t.string "key_skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "objective"
    t.text "goals"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
