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

ActiveRecord::Schema.define(version: 20130724202233) do

  create_table "addresses", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "cep"
    t.string   "neighborhood"
    t.string   "street"
    t.string   "number"
    t.string   "complement"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inscription_id"
  end

  create_table "educations", force: true do |t|
    t.string   "school"
    t.date     "begin"
    t.date     "end"
    t.string   "degree"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inscription_id"
  end

  create_table "inscriptions", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "linkedin_url"
    t.string   "github"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "about"
    t.string   "phone"
    t.string   "cellphone"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "company"
    t.date     "begin"
    t.date     "end"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inscription_id"
  end

end
