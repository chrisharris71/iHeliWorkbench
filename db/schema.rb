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

ActiveRecord::Schema.define(:version => 20120517232643) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "admins", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cyclic_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "elec_motors", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "engines", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "exhausts", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.string   "works_with"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "fbl_units", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "governors", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "heli_kits", :force => true do |t|
    t.string   "name"
    t.string   "part_number"
    t.string   "size"
    t.string   "power"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
  end

  add_index "heli_kits", ["manufacturer_id"], :name => "index_heli_kits_on_manufacturer_id"

  create_table "main_blades", :force => true do |t|
    t.string   "part_number"
    t.integer  "blade_length"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
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
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "electric"
    t.boolean  "flybarless"
    t.integer  "heli_kit_id"
    t.integer  "elec_motor_id"
    t.integer  "engine_id"
    t.integer  "exhaust_id"
    t.integer  "speed_control_id"
    t.integer  "cyclic_servo_id"
    t.integer  "rudder_servo_id"
    t.integer  "throttle_servo_id"
    t.integer  "rudder_gyro_id"
    t.integer  "fbl_unit_id"
    t.integer  "receiver_id"
    t.integer  "governor_id"
    t.integer  "main_blade_id"
    t.integer  "tail_blade_id"
    t.integer  "paddle_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "name"
  end

  create_table "receivers", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "channels"
    t.boolean  "has_gov"
    t.boolean  "has_fbl_unit"
    t.boolean  "has_volt_reg"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "rudder_gyros", :force => true do |t|
    t.string   "part_number"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "rudder_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "speed_controls", :force => true do |t|
    t.string   "part_number"
    t.integer  "amp_rating"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "tail_blades", :force => true do |t|
    t.string   "part_number"
    t.integer  "blade_length"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
  end

  create_table "throttle_servos", :force => true do |t|
    t.string   "part_number"
    t.integer  "max_torque"
    t.integer  "max_speed"
    t.string   "size"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "size_id"
    t.string   "name"
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
