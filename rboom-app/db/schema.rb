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

ActiveRecord::Schema.define(version: 20140425115320) do

  create_table "boomerangs", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel_no"
    t.string   "fb_page"
    t.string   "header_file"
    t.string   "contact_name"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "timelag"
    t.string   "message"
    t.string   "type"
    t.integer  "programme_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["programme_id"], name: "index_messages_on_programme_id"

  create_table "programmes", force: true do |t|
    t.string   "name"
    t.string   "objective"
    t.string   "target"
    t.string   "string"
    t.integer  "boomerang_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programmes", ["boomerang_id"], name: "index_programmes_on_boomerang_id"

end
