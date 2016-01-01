# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151221233044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dancers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "bio"
    t.string   "year"
    t.integer  "goal"
    t.string   "gender"
    t.string   "tshirt"
    t.string   "residence"
    t.string   "shift"
    t.boolean  "first_time"
    t.string   "hear_about"
    t.string   "food_allergies"
    t.boolean  "vegetarian"
    t.string   "contact_name"
    t.string   "contact_number"
    t.string   "conditional_details"
    t.string   "dancing_for"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.integer  "team_id"
    t.boolean  "staff_member"
  end

  add_index "dancers", ["email"], name: "index_dancers_on_email", unique: true, using: :btree
  add_index "dancers", ["reset_password_token"], name: "index_dancers_on_reset_password_token", unique: true, using: :btree
  add_index "dancers", ["team_id"], name: "index_dancers_on_team_id", using: :btree

  create_table "donations", force: :cascade do |t|
    t.float    "amount"
    t.string   "name"
    t.integer  "gift_id"
    t.integer  "gift_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "donations", ["gift_id"], name: "index_donations_on_gift_id", using: :btree

  create_table "dorms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.string   "name"
    t.string   "theme"
    t.datetime "year"
    t.string   "overview"
    t.string   "amount_raised"
    t.string   "num_of_dancers"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projectmembers", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projectmembers", ["project_id"], name: "index_projectmembers_on_project_id", using: :btree
  add_index "projectmembers", ["staff_id"], name: "index_projectmembers_on_staff_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "link"
    t.integer  "partner_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "branding_file_name"
    t.string   "branding_content_type"
    t.integer  "branding_file_size"
    t.datetime "branding_updated_at"
  end

  add_index "projects", ["partner_id"], name: "index_projects_on_partner_id", using: :btree

  create_table "projectteams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.string   "team"
    t.integer  "blairScore"
    t.integer  "peddieScore"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "major"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "position"
    t.boolean  "active"
    t.string   "github"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dancers", "teams"
  add_foreign_key "projectmembers", "projects"
  add_foreign_key "projectmembers", "staffs"
  add_foreign_key "projects", "partners"
end
