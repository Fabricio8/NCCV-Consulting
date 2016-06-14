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

ActiveRecord::Schema.define(version: 20160614030655) do

  create_table "departamentos", force: :cascade do |t|
    t.string   "codigo_departamento", limit: 255
    t.text     "nombre_departamento", limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "districts", ["department_id"], name: "index_districts_on_department_id", using: :btree

  create_table "distritos", force: :cascade do |t|
    t.integer  "cod_distrito",    limit: 4
    t.string   "nom_distrito",    limit: 255
    t.integer  "departamento_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "distritos", ["departamento_id"], name: "index_distritos_on_departamento_id", using: :btree

  create_table "garages", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "dimension",   limit: 255
    t.string   "observation", limit: 255
    t.string   "address",     limit: 255
    t.string   "reference",   limit: 255
    t.string   "location",    limit: 255
    t.string   "latitude",    limit: 255
    t.string   "length",      limit: 255
    t.string   "accuracy",    limit: 255
    t.integer  "profile_id",  limit: 4
    t.integer  "district_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "garages", ["district_id"], name: "index_garages_on_district_id", using: :btree
  add_index "garages", ["profile_id"], name: "index_garages_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "email",         limit: 255
    t.string   "Type_profiles", limit: 255
    t.string   "name",          limit: 255
    t.string   "Documento",     limit: 255
    t.string   "addr_user",     limit: 255
    t.string   "phone",         limit: 255
    t.integer  "user_id",       limit: 4
    t.integer  "type_user_id",  limit: 4
    t.integer  "district_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "profiles", ["district_id"], name: "index_profiles_on_district_id", using: :btree
  add_index "profiles", ["type_user_id"], name: "index_profiles_on_type_user_id", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "rent_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

<<<<<<< HEAD
  create_table "transaction_offers", force: :cascade do |t|
    t.integer  "renting_id",       limit: 4
    t.integer  "profile_id",       limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.time     "star_hour"
    t.time     "end_hour"
    t.integer  "hours_quantity",   limit: 4
    t.date     "transaction_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "transaction_offers", ["profile_id"], name: "index_transaction_offers_on_profile_id", using: :btree
  add_index "transaction_offers", ["renting_id"], name: "index_transaction_offers_on_renting_id", using: :btree

  create_table "transaction_offers1s", force: :cascade do |t|
    t.integer  "renting_id",       limit: 4
    t.integer  "profile_id",       limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.time     "star_hour"
    t.time     "end_hour"
    t.integer  "hours_quantity",   limit: 4
    t.date     "transaction_date"
    t.float    "cost",             limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "transaction_offers1s", ["profile_id"], name: "index_transaction_offers1s_on_profile_id", using: :btree
  add_index "transaction_offers1s", ["renting_id"], name: "index_transaction_offers1s_on_renting_id", using: :btree
=======
  create_table "rentings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "cost",                   precision: 10
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "state",      limit: 4
    t.datetime "start_hour"
    t.datetime "end_hour"
    t.integer  "garage_id",  limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "rentings", ["garage_id"], name: "index_rentings_on_garage_id", using: :btree
>>>>>>> 06fcfb64c1b5fd913cdbbb4a4bc6c41817168e19

  create_table "type_garages", force: :cascade do |t|
    t.string   "Des_typegarage", limit: 255
    t.string   "no_ceiling",     limit: 255
    t.string   "yes_ceiling",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "type_users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "districts", "departments"
  add_foreign_key "distritos", "departamentos"
  add_foreign_key "garages", "districts"
  add_foreign_key "garages", "profiles"
  add_foreign_key "profiles", "districts"
  add_foreign_key "profiles", "type_users"
  add_foreign_key "profiles", "users"
  add_foreign_key "rentings", "garages"
end
