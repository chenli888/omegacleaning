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

ActiveRecord::Schema.define(version: 20141002233311) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cleaners", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cleaners", ["email"], name: "index_cleaners_on_email", unique: true
  add_index "cleaners", ["remember_token"], name: "index_cleaners_on_remember_token"
  add_index "cleaners", ["username"], name: "index_cleaners_on_username", unique: true

  create_table "companies", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true
  add_index "companies", ["remember_token"], name: "index_companies_on_remember_token"
  add_index "companies", ["username"], name: "index_companies_on_username", unique: true

  create_table "events", force: true do |t|
    t.integer  "company_id"
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "start_hour"
    t.integer  "end_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
