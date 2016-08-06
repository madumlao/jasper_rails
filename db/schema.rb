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

ActiveRecord::Schema.define(version: 20160806000000) do

  create_table "voucher_accounts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.string   "no",                 limit: 255
    t.date     "date"
    t.string   "payee",              limit: 255
    t.text     "description",        limit: 65535
    t.decimal  "amount",                           precision: 10
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "voucher_account_id", limit: 4
  end

  add_index "vouchers", ["voucher_account_id"], name: "index_vouchers_on_voucher_account_id", using: :btree

  add_foreign_key "vouchers", "voucher_accounts"
end
