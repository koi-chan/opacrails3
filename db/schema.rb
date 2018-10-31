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

ActiveRecord::Schema.define(version: 2018_10_31_152013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authority_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bibliographies", force: :cascade do |t|
    t.string "isbn13"
    t.string "author"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id"
    t.string "jan13"
    t.string "title_kana"
    t.string "title_infomation"
    t.date "first_publishing_date"
    t.date "publishing_date"
    t.string "edition"
    t.string "page"
    t.string "size"
    t.text "physical_description"
    t.text "summary"
    t.text "note"
    t.index ["publisher_id"], name: "index_bibliographies_on_publisher_id"
    t.index ["title"], name: "index_bibliographies_on_title"
  end

  create_table "collections", force: :cascade do |t|
    t.bigint "bibliography_id"
    t.string "callnum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bibliography_id"], name: "index_collections_on_bibliography_id"
  end

  create_table "loan_histories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "collection_id"
    t.date "loan_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_loan_histories_on_collection_id"
    t.index ["user_id"], name: "index_loan_histories_on_user_id"
  end

  create_table "loans", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "collection_id"
    t.date "loan_date"
    t.date "return_date"
    t.integer "reloan_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_loans_on_collection_id", unique: true
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "isbn_code"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_statuses", force: :cascade do |t|
    t.string "name"
    t.integer "loan_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reloan"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_status_id"
    t.index ["name"], name: "index_users_on_name"
    t.index ["user_status_id"], name: "index_users_on_user_status_id"
  end

  add_foreign_key "bibliographies", "publishers"
  add_foreign_key "loan_histories", "collections"
  add_foreign_key "loan_histories", "users"
  add_foreign_key "loans", "collections"
  add_foreign_key "loans", "users"
  add_foreign_key "users", "user_statuses"
end
