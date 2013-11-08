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

ActiveRecord::Schema.define(version: 20131108054613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "careers", force: true do |t|
    t.string   "career"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "careers_courses", id: false, force: true do |t|
    t.integer "career"
    t.integer "course"
  end

  create_table "classrooms", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", id: false, force: true do |t|
    t.integer  "course_id",  null: false
    t.integer  "term"
    t.string   "department"
    t.string   "title"
    t.integer  "number"
    t.integer  "section"
    t.string   "start"
    t.string   "end"
    t.string   "room"
    t.integer  "days"
    t.integer  "year"
    t.string   "status"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["course_id"], name: "index_courses_on_course_id", using: :btree

  create_table "courses_professors", id: false, force: true do |t|
    t.integer "professor_id"
    t.integer "course_id"
  end

  create_table "ctecs", force: true do |t|
    t.integer  "course_id"
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

  add_index "ctecs", ["course_id"], name: "index_ctecs_on_course_id", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "descriptions", force: true do |t|
    t.text     "overview"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descriptions", ["course_id"], name: "index_descriptions_on_course_id", using: :btree

  create_table "professors", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "Field"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "subject"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "rating"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_reviews", ["course_id"], name: "index_user_reviews_on_course_id", using: :btree
  add_index "user_reviews", ["user_id"], name: "index_user_reviews_on_user_id", using: :btree

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
