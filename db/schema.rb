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

ActiveRecord::Schema.define(version: 20140622174453) do

  create_table "aassignments", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date"
    t.datetime "due"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tturn_ins", force: true do |t|
    t.integer  "user_id"
    t.integer  "exercises_id"
    t.string   "url"
    t.boolean  "completed"
    t.boolean  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
