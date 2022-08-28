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

ActiveRecord::Schema[7.0].define(version: 2022_08_28_172358) do
  create_table "cars", force: :cascade do |t|
    t.integer "car_id"
    t.string "car_name"
    t.string "car_model"
    t.string "car_detail"
    t.string "seller_name"
    t.integer "issue_year"
    t.string "car_condition"
    t.text "car_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "category_id"
    t.string "category_type"
    t.string "car_name"
    t.string "car_model"
    t.string "car_detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "city_id"
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makes", force: :cascade do |t|
    t.integer "make_id"
    t.string "make_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
