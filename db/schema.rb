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

ActiveRecord::Schema.define(version: 20170722141648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.string   "intercom_id"
    t.integer  "messages_count"
    t.string   "company_name"
    t.string   "company_id"
    t.integer  "total_time_in_hours"
    t.string   "messages"
    t.string   "user_email"
    t.string   "user_intercom_id"
    t.string   "user_user_id"
    t.string   "user_name"
    t.string   "assignee"
    t.integer  "cost"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "tags",                default: [],              array: true
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
