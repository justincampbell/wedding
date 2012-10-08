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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121008033009) do

  create_table "guests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zip_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "party_id"
    t.text     "settings"
  end

  create_table "parties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rsvps", :force => true do |t|
    t.integer  "guest_id"
    t.boolean  "attending"
    t.string   "meal"
    t.boolean  "bus"
    t.boolean  "rehearsal"
    t.boolean  "brunch"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "dietary"
  end

  add_index "rsvps", ["guest_id"], :name => "index_rsvps_on_guest_id"

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
