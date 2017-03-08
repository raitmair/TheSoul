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

ActiveRecord::Schema.define(version: 20170308141858) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "text",         limit: 65535
    t.boolean  "is_published"
    t.datetime "published_at"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer "category_id", limit: 4
  end

  add_index "articles", ["category_id"], name: "index_articles_on_category_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "create", limit: 255
    t.string "update", limit: 255
    t.string "destroy", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_categories", force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string "name", limit: 255
    t.decimal "price", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_category_id", limit: 4
    t.integer "currency_id", limit: 4
  end

  add_index "prices", ["currency_id"], name: "index_prices_on_currency_id", using: :btree
  add_index "prices", ["price_category_id"], name: "index_prices_on_price_category_id", using: :btree

  add_foreign_key "articles", "categories"
  add_foreign_key "prices", "currencies"
  add_foreign_key "prices", "price_categories"
end
