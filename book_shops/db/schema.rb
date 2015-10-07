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

ActiveRecord::Schema.define(version: 20151007034440) do

  create_table "book_shops", force: :cascade do |t|
    t.string   "shop_name",     limit: 35, null: false
    t.string   "shop_location", limit: 30, null: false
    t.integer  "phone_number",  limit: 8,  null: false
    t.string   "email_address", limit: 50, null: false
    t.string   "shop_pic"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "book_name"
    t.text     "book_description"
    t.string   "book_author"
    t.integer  "book_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "book_shop_id"
  end

end
