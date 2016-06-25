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

ActiveRecord::Schema.define(version: 20160625081949) do

  create_table "activities", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "category_id",           limit: 4
    t.integer  "word_learned_quantity", limit: 4
    t.integer  "user_id",               limit: 4
  end

  add_index "activities", ["created_at"], name: "index_activities_on_created_at", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "description", limit: 65535
  end

  create_table "results", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "word_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "results", ["user_id", "word_id", "category_id"], name: "index_results_on_user_id_and_word_id_and_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "password",     limit: 255
    t.string   "email",        limit: 255
    t.datetime "birthday"
    t.string   "address",      limit: 255
    t.string   "phone_number", limit: 255
    t.boolean  "admin"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "en",          limit: 255
    t.string   "vi",          limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "words", ["category_id", "created_at"], name: "index_words_on_category_id_and_created_at", using: :btree

end
