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

ActiveRecord::Schema.define(version: 20160708211556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brokers", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.integer  "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_products", force: :cascade do |t|
    t.string   "name"
    t.integer  "type_product_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "line_products", ["type_product_id"], name: "index_line_products_on_type_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "cod"
    t.integer  "cond_long"
    t.string   "name"
    t.integer  "type_product_id"
    t.integer  "line_product_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "products", ["line_product_id"], name: "index_products_on_line_product_id", using: :btree
  add_index "products", ["type_product_id"], name: "index_products_on_type_product_id", using: :btree

  create_table "sales", force: :cascade do |t|
    t.integer  "number_doc"
    t.integer  "sale_note"
    t.float    "quantity"
    t.string   "um"
    t.float    "price"
    t.string   "sale_clause"
    t.date     "date_doc"
    t.integer  "type_doc_id"
    t.integer  "destination_id"
    t.integer  "broker_id"
    t.integer  "product_id"
    t.integer  "client_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sales", ["broker_id"], name: "index_sales_on_broker_id", using: :btree
  add_index "sales", ["client_id"], name: "index_sales_on_client_id", using: :btree
  add_index "sales", ["destination_id"], name: "index_sales_on_destination_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree
  add_index "sales", ["type_doc_id"], name: "index_sales_on_type_doc_id", using: :btree

  create_table "type_docs", force: :cascade do |t|
    t.integer  "cod_sii"
    t.string   "name"
    t.boolean  "positive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "line_products", "type_products"
  add_foreign_key "products", "line_products"
  add_foreign_key "products", "type_products"
  add_foreign_key "sales", "brokers"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "destinations"
  add_foreign_key "sales", "products"
  add_foreign_key "sales", "type_docs"
end
