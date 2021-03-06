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

ActiveRecord::Schema.define(version: 2019_01_30_152744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.date "dateofbirth"
    t.string "nrc"
    t.string "manno"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "employstatus"
    t.string "employministry"
    t.date "dateofemploy"
    t.date "expretirementdate"
    t.integer "grosssalary"
    t.string "nok"
    t.string "maritalstatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "itemno"
    t.string "name"
    t.date "stockingdate"
    t.string "model"
    t.date "warrantexpdate"
    t.string "serialno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "purchaseno"
    t.bigint "client_id"
    t.date "dateofpurchase"
    t.bigint "item_id"
    t.integer "quantity"
    t.float "purchasevalue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_purchases_on_client_id"
    t.index ["item_id"], name: "index_purchases_on_item_id"
  end

  add_foreign_key "purchases", "clients"
  add_foreign_key "purchases", "items"
end
