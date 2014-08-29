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

ActiveRecord::Schema.define(version: 20140828234217) do

  create_table "characteristics", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "two_sided"
    t.boolean  "continuous"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dim_types", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "two_sided"
    t.boolean  "continuous"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discussions", force: true do |t|
    t.text     "body"
    t.integer  "discussable_id"
    t.string   "discussable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "partnumber"
    t.string   "revision"
    t.string   "customer"
    t.string   "print"
  end

  create_table "requirements", force: true do |t|
    t.string   "bubble"
    t.integer  "part_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "characteristic_id"
    t.float    "dim"
    t.float    "tolerance_plus"
    t.float    "tolerance_less"
  end

end
