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

ActiveRecord::Schema.define(version: 20190108070410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "npcs", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "surname"
    t.integer  "age"
    t.string   "sex"
    t.string   "haircolor"
    t.string   "eyecolor"
    t.string   "skincolor"
    t.text     "notes"
    t.integer  "level"
    t.integer  "height"
    t.integer  "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "race_id"
    t.string   "alignment"
    t.string   "rpgclass"
    t.string   "occupation"
    t.string   "secret"
    t.index ["race_id"], name: "index_npcs_on_race_id", using: :btree
  end

  create_table "races", force: :cascade do |t|
    t.integer  "modNum"
    t.integer  "modDie"
    t.integer  "weightMod"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "name"
    t.integer  "maleBaseWeight"
    t.integer  "femaleBaseWeight"
    t.integer  "maleBaseHeight"
    t.integer  "femaleBaseHeight"
    t.integer  "middleAge"
    t.integer  "adultAge"
    t.integer  "oldAge"
    t.integer  "venerableAge"
    t.integer  "maxAge"
    t.text     "eyeColor"
    t.text     "skinColor"
    t.text     "hairColor"
  end

  add_foreign_key "npcs", "races"
end
