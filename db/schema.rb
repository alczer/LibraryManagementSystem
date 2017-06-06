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

ActiveRecord::Schema.define(version: 20170606062733) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.date     "date_born"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "item_authors", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_item_authors_on_author_id"
    t.index ["item_id"], name: "index_item_authors_on_item_id"
  end

  create_table "item_categories", force: :cascade do |t|
    t.integer "item_id",     null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_item_categories_on_category_id"
    t.index ["item_id"], name: "index_item_categories_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "isbn",                  limit: 8
    t.string   "language"
    t.string   "state"
    t.date     "date_pub"
    t.string   "item_img_file_name"
    t.string   "item_img_content_type"
    t.integer  "item_img_file_size"
    t.datetime "item_img_updated_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "publisher_id"
    t.index ["publisher_id"], name: "index_items_on_publisher_id"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "item_id",      null: false
    t.integer "user_id",      null: false
    t.date    "date_in",      null: false
    t.date    "date_out",     null: false
    t.integer "librarian_id", null: false
  end

  create_table "penalties", force: :cascade do |t|
    t.date    "date",      null: false
    t.integer "value",     null: false
    t.integer "client_id", null: false
    t.integer "loan_id",   null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "last_name",              limit: 255,              null: false
    t.string   "email",                  limit: 255,              null: false
    t.string   "address",                limit: 255,              null: false
    t.date     "date_joined",                                     null: false
    t.date     "date_active_from"
    t.date     "date_active_to"
    t.string   "user_type",              limit: 12,               null: false
    t.string   "encrypted_password",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.datetime "remember_created_at"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
