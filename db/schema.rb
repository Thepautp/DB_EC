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

ActiveRecord::Schema.define(version: 20180411083151) do

  create_table "addresses", force: :cascade do |t|
    t.string "zip"
    t.integer "fuken_id"
    t.string "addr_1"
    t.string "addr_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "fn_furigana"
    t.string "ln_furigana"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fukens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.float "order_amount"
    t.datetime "shipped_date"
    t.integer "order_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "prod_categorie_id"
    t.integer "prod_type_id"
    t.float "price"
    t.integer "stock"
    t.float "weight"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
