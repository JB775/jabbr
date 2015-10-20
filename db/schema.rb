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

ActiveRecord::Schema.define(version: 20151020034441) do

  create_table "jabs", force: :cascade do |t|
    t.string  "jab_content"
    t.integer "user_id"
    t.integer "profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string  "profile_headline"
    t.string  "profile_about_content"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "followed_id"
    t.integer "follower_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "birthday"
    t.datetime "created_at"
    t.datetime "date_edited"
  end

end
