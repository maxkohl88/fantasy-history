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

ActiveRecord::Schema.define(version: 20140331003450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

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

  create_table "histories", force: true do |t|
    t.string   "team"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "year"
    t.string   "league"
    t.string   "sport"
    t.string   "championship"
    t.integer  "league_id"
  end

  add_index "histories", ["league_id"], name: "index_histories_on_league_id", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leagues", ["sport_id"], name: "index_leagues_on_sport_id", using: :btree

  create_table "owners", force: true do |t|
    t.integer  "year"
    t.integer  "wins"
    t.integer  "losses"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rankings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
