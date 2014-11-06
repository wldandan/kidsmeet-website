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

ActiveRecord::Schema.define(version: 20141105164017) do

  create_table "attendances", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.integer  "children_number"
    t.integer  "adults_number"
    t.string   "username"
    t.integer  "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "abstract"
    t.text     "content"
    t.string   "main_image_url"
    t.date     "apply_end_date"
    t.datetime "expired_at"
    t.string   "duration"
    t.string   "address"
    t.boolean  "is_published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end