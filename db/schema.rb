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

ActiveRecord::Schema.define(:version => 20140620080114) do

  create_table "departments", :force => true do |t|
    t.string "code", :limit => 25
    t.string "name", :limit => 50
  end

  create_table "designations", :force => true do |t|
    t.string "code", :limit => 25
    t.string "name", :limit => 50
  end

  create_table "employees", :force => true do |t|
    t.string  "first_name",     :limit => 50
    t.string  "last_name",      :limit => 50
    t.string  "address1",       :limit => 50
    t.string  "address2",       :limit => 50
    t.string  "city",           :limit => 50
    t.string  "state",          :limit => 50
    t.integer "phone1"
    t.integer "designation_id"
    t.integer "manager_id"
    t.integer "department"
  end

  create_table "users", :force => true do |t|
    t.string  "code",     :limit => 25
    t.string  "name",     :limit => 50
    t.string  "address1", :limit => 50
    t.string  "address2", :limit => 50
    t.string  "city",     :limit => 50
    t.string  "state",    :limit => 50
    t.integer "phone1"
    t.string  "password"
    t.string  "email"
  end

end
