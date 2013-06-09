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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130608204141) do

  create_table "chapters", :force => true do |t|
    t.integer  "lesson_id"
    t.integer  "number"
    t.string   "title"
    t.string   "content"
    t.string   "youtube_id"
    t.boolean  "assignment"
    t.datetime "created_at", :null => false
  end

  add_index "chapters", ["lesson_id", "number"], :name => "index_chapters_on_lesson_id_and_number"

  create_table "critiques", :force => true do |t|
    t.integer  "micropost_id"
    t.integer  "reviewer_id",  :null => false
    t.string   "category"
    t.boolean  "positive"
    t.string   "comment"
    t.integer  "seconds"
    t.datetime "created_at",   :null => false
  end

  add_index "critiques", ["micropost_id", "seconds"], :name => "index_critiques_on_micropost_id_and_seconds"

  create_table "lessons", :force => true do |t|
    t.integer  "number"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
  end

  add_index "lessons", ["number"], :name => "index_lessons_on_number"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "lesson_id"
    t.string   "youtube_id"
    t.string   "title"
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",             :default => false
    t.boolean  "professional"
    t.integer  "current_lesson_id", :default => 1
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
