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

ActiveRecord::Schema.define(version: 20170218095924) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "month_blog_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "nickname"
    t.string   "email"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "news_id"
  end

  create_table "month_blogs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "blog_date"
    t.integer  "blog_id"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "comment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "hash_pwd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
