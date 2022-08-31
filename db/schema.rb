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

ActiveRecord::Schema[7.0].define(version: 2022_08_30_082449) do
  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "details"
    t.string "seller_name"
    t.integer "issue_year"
    t.string "condition"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "make_id", null: false
    t.integer "city_id", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_cars_on_category_id"
    t.index ["city_id"], name: "index_cars_on_city_id"
    t.index ["make_id"], name: "index_cars_on_make_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "categories"
  add_foreign_key "cars", "cities"
  add_foreign_key "cars", "makes"
end
