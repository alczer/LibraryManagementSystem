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

ActiveRecord::Schema.define(version: 20170527121010) do

  create_table "authors", primary_key: "id_author", force: :cascade do |t|
    t.string "name",      limit: 255, null: false
    t.date   "date_born",             null: false
  end

  create_table "categories", primary_key: "id_category", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "item_authors", primary_key: "id_item_author", force: :cascade do |t|
    t.integer "id_item",   null: false
    t.integer "id_author", null: false
  end

  create_table "item_categories", primary_key: "id_item_category", force: :cascade do |t|
    t.integer "id_item",     null: false
    t.integer "id_category", null: false
  end

  create_table "items", primary_key: "id_item", force: :cascade do |t|
    t.integer  "id_publisher",                       null: false
    t.string   "name",                  limit: 255,  null: false
    t.string   "description",           limit: 1000, null: false
    t.integer  "isbn",                               null: false
    t.string   "language",              limit: 255,  null: false
    t.string   "state",                 limit: 12,   null: false
    t.date     "date_pub",                           null: false
    t.string   "item_img_file_name"
    t.string   "item_img_content_type"
    t.integer  "item_img_file_size"
    t.datetime "item_img_updated_at"
  end

  create_table "loans", primary_key: "id_loan", force: :cascade do |t|
    t.integer "id_item",      null: false
    t.integer "id_user",      null: false
    t.date    "date_in",      null: false
    t.date    "date_out",     null: false
    t.integer "id_librarian", null: false
  end

  create_table "penalties", primary_key: "id_penalty", force: :cascade do |t|
    t.date    "date",      null: false
    t.integer "value",     null: false
    t.integer "id_client", null: false
    t.integer "id_loan",   null: false
  end

  create_table "publishers", primary_key: "id_publisher", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "users", primary_key: "id_user", force: :cascade do |t|
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
