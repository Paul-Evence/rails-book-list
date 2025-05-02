# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_02_071928) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.boolean "favorite"
    t.string "comment"
    t.bigint "list_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_bookmarks_on_book_id"
    t.index ["list_id"], name: "index_bookmarks_on_list_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "teaser"
    t.string "cover_url"
    t.date "published"
    t.string "genre"
    t.string "summary"
    t.float "density"
    t.float "difficulty"
    t.float "popularity"
    t.float "originality"
    t.float "GCI_score"
    t.string "first_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.float "score_1"
    t.float "score_2"
    t.float "score_3"
    t.string "map"
    t.string "recomendation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookmarks", "books"
  add_foreign_key "bookmarks", "lists"
end
