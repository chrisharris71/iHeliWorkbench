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

ActiveRecord::Schema.define(:version => 20120513163040) do

  create_table "cyclic_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "elec_motors", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "engines", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exhausts", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "works_with"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "fbl_units", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "governors", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "heli_kits", :force => true do |t|
    t.string   "kit_name"
    t.string   "part_number"
    t.string   "size"
    t.string   "power"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "main_blades", :force => true do |t|
    t.string   "part_number"
    t.integer  "blade_length"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "mfg_name"
    t.integer  "mfg_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "paddles", :force => true do |t|
    t.string   "part_number"
    t.integer  "paddle_length"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "user"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "receivers", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "channels"
    t.boolean  "has_gov"
    t.boolean  "has_fbl_unit"
    t.boolean  "has_volt_reg"
    t.integer  "mfg_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "rudder_gyros", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rudder_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "speed_controls", :force => true do |t|
    t.string   "part_number"
    t.integer  "amps"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tail_blades", :force => true do |t|
    t.string   "part_number"
    t.integer  "blade_length"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "throttle_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "mfg_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
