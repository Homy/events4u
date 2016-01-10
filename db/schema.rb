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

ActiveRecord::Schema.define(version: 20160110195744) do

  create_table "event_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.text     "about",         limit: 65535
    t.string   "url",           limit: 255
    t.integer  "host_id",       limit: 4
    t.integer  "event_type_id", limit: 4
    t.integer  "place_id",      limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "dateStart"
    t.datetime "dateEnd"
    t.string   "importedFrom",  limit: 255
    t.integer  "imported_id",   limit: 8
    t.integer  "user_id",       limit: 4
  end

  add_index "events", ["event_type_id"], name: "index_events_on_event_type_id", using: :btree
  add_index "events", ["host_id"], name: "index_events_on_host_id", using: :btree
  add_index "events", ["place_id"], name: "index_events_on_place_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "hosts", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "phone",          limit: 255
    t.text     "about",          limit: 65535
    t.string   "email",          limit: 255
    t.string   "url",            limit: 255
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.string   "country",        limit: 255
    t.string   "city",           limit: 255
    t.string   "street_address", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "imported_events", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.text     "about",            limit: 65535
    t.datetime "dateStart"
    t.datetime "dateEnd"
    t.string   "url",              limit: 255
    t.integer  "host_id",          limit: 4
    t.integer  "place_id",         limit: 4
    t.integer  "event_type_id",    limit: 4
    t.integer  "user_id",          limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "iplace_name",      limit: 255
    t.float    "iplace_latitude",  limit: 24
    t.float    "iplace_longitude", limit: 24
    t.string   "iplace_country",   limit: 255
    t.string   "iplace_city",      limit: 255
    t.integer  "iplace_id",        limit: 8
    t.integer  "ihost_id",         limit: 8
    t.integer  "ievent_id",        limit: 8
  end

  add_index "imported_events", ["event_type_id"], name: "index_imported_events_on_event_type_id", using: :btree
  add_index "imported_events", ["host_id"], name: "index_imported_events_on_host_id", using: :btree
  add_index "imported_events", ["place_id"], name: "index_imported_events_on_place_id", using: :btree
  add_index "imported_events", ["user_id"], name: "index_imported_events_on_user_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "phone",          limit: 255
    t.text     "about",          limit: 65535
    t.string   "email",          limit: 255
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.string   "country",        limit: 255
    t.string   "city",           limit: 255
    t.string   "street_address", limit: 255
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
    t.integer  "place_id",       limit: 8
    t.string   "importedFrom",   limit: 255,   default: "Created manually"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.integer  "event_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "reports", ["event_id"], name: "index_reports_on_event_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "",    null: false
    t.string   "encrypted_password",     limit: 255,   default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.datetime "confirmed_at"
    t.text     "token",                  limit: 65535
    t.boolean  "admin",                  limit: 1,     default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "events", "event_types"
  add_foreign_key "events", "hosts"
  add_foreign_key "events", "places"
  add_foreign_key "events", "users"
  add_foreign_key "imported_events", "event_types"
  add_foreign_key "imported_events", "hosts"
  add_foreign_key "imported_events", "places"
  add_foreign_key "imported_events", "users"
  add_foreign_key "reports", "events"
end
