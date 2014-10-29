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

ActiveRecord::Schema.define(version: 20141029092925) do

  create_table "assets", force: true do |t|
    t.string   "name"
    t.integer  "amount"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "room_id"
    t.integer  "asset_id"
    t.integer  "qanak"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id",   default: 1
    t.string   "code"
    t.integer  "person_id",  default: 1
  end

  create_table "people", force: true do |t|
    t.integer  "section_id"
    t.integer  "position_id"
    t.integer  "room_id"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "thirdName"
    t.string   "cellPhone1"
    t.string   "cellPhone2"
    t.string   "cityPhone"
    t.string   "email"
    t.string   "workemail"
    t.date     "bdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.float    "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
