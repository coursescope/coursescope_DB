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

ActiveRecord::Schema.define(version: 20131107092758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.integer  "classID"
    t.text     "Description"
    t.string   "Department"
    t.integer  "Number"
    t.string   "Time"
    t.string   "days"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ctecs", force: true do |t|
    t.integer  "course_ID"
    t.text     "description"
    t.integer  "instr_rating"
    t.integer  "course_rating"
    t.integer  "learned_rating"
    t.integer  "challenging_rating"
    t.integer  "interest_rating"
    t.string   "school"
    t.string   "class"
    t.string   "reason"
    t.integer  "interest_before"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.integer  "professorID"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "Field"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors_courses", id: false, force: true do |t|
    t.integer "professor"
    t.integer "course"
  end

  create_table "user_reviews", force: true do |t|
    t.integer  "user_ID"
    t.integer  "course_ID"
    t.integer  "rating"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "encrypted_password"
    t.text     "personal_information"
    t.string   "school"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
