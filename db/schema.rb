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

ActiveRecord::Schema.define(version: 20150623185804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.integer "monster1"
    t.integer "monster2"
    t.integer "winner"
  end

  add_index "matches", ["monster1"], name: "index_matches_on_monster1", using: :btree
  add_index "matches", ["monster2"], name: "index_matches_on_monster2", using: :btree
  add_index "matches", ["winner"], name: "index_matches_on_winner", using: :btree

  create_table "monsters", force: :cascade do |t|
    t.string  "name"
    t.integer "attack"
    t.integer "defense"
    t.string  "race"
  end

  create_table "monsters_users", id: false, force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "user_id",    null: false
  end

  add_index "monsters_users", ["monster_id", "user_id"], name: "index_monsters_users_on_monster_id_and_user_id", using: :btree
  add_index "monsters_users", ["user_id", "monster_id"], name: "index_monsters_users_on_user_id_and_monster_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
