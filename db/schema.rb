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

ActiveRecord::Schema.define(:version => 20110703225604) do

  create_table "list_views", :force => true do |t|
    t.integer  "postid"
    t.string   "title"
    t.string   "author"
    t.string   "createdate"
    t.boolean  "published"
    t.string   "publishdate"
    t.string   "imageurl"
    t.string   "iconurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "publishdate"
    t.string   "createdate"
    t.string   "image"
    t.string   "platform"
    t.string   "icon"
    t.string   "link"
    t.integer  "tagid"
    t.string   "tag"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "status"
    t.string   "lastpost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
