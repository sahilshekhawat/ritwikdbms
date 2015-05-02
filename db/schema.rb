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

ActiveRecord::Schema.define(version: 0) do

  create_table "Customer", primary_key: "CNO", force: :cascade do |t|
    t.string  "FNAME", limit: 25, null: false
    t.string  "LNAME", limit: 25, null: false
    t.integer "ZIP",   limit: 4,  null: false
  end

  create_table "Employee", primary_key: "ENO", force: :cascade do |t|
    t.string  "FNAME", limit: 25, null: false
    t.string  "LNAME", limit: 25, null: false
    t.integer "ZIP",   limit: 4,  null: false
  end

  create_table "Order_Details", id: false, force: :cascade do |t|
    t.integer "ONO",      limit: 4, null: false
    t.integer "PNO",      limit: 4, null: false
    t.integer "QUANTITY", limit: 4, null: false
  end

  add_index "Order_Details", ["PNO"], name: "PNO", using: :btree

  create_table "Orders", primary_key: "ONO", force: :cascade do |t|
    t.integer "CNO",      limit: 4,  null: false
    t.integer "ENO",      limit: 4,  null: false
    t.string  "RECIEVED", limit: 10
    t.string  "SHIPPED",  limit: 10
  end

  add_index "Orders", ["CNO"], name: "CNO", using: :btree
  add_index "Orders", ["ENO"], name: "ENO", using: :btree

  create_table "Parts", primary_key: "PNO", force: :cascade do |t|
    t.string  "PNAME",    limit: 35, null: false
    t.integer "PRICE",    limit: 4,  null: false
    t.integer "QUANTITY", limit: 4,  null: false
  end

  add_foreign_key "Order_Details", "Orders", column: "ONO", primary_key: "ONO", name: "order_details_ibfk_1"
  add_foreign_key "Order_Details", "Parts", column: "PNO", primary_key: "PNO", name: "order_details_ibfk_2"
  add_foreign_key "Orders", "Customer", column: "CNO", primary_key: "CNO", name: "orders_ibfk_1"
  add_foreign_key "Orders", "Employee", column: "ENO", primary_key: "ENO", name: "orders_ibfk_2"
end
