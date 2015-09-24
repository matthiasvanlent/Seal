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

ActiveRecord::Schema.define(version: 20150924125910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "legaltype"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "country"
    t.integer  "sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "companies", ["sector_id"], name: "index_companies_on_sector_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "firstname"
    t.date     "birthdate"
    t.string   "sex"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree
  add_index "employees", ["skill_id"], name: "index_employees_on_skill_id", using: :btree

  create_table "employeevacancies", force: :cascade do |t|
    t.integer  "employer_id"
    t.integer  "vacency_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "function"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "employers", ["company_id"], name: "index_employers_on_company_id", using: :btree

  create_table "employervacancies", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "vacency_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacancies", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "companies", "sectors"
  add_foreign_key "employees", "companies"
  add_foreign_key "employees", "skills"
  add_foreign_key "employers", "companies"
end
