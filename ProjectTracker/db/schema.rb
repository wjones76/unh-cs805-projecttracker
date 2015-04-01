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

ActiveRecord::Schema.define(:version => 20150329153348) do

  create_table "categories", :force => true do |t|
    t.string   "category",   :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "categories", ["category"], :name => "index_categories_on_category", :unique => true

  create_table "departments", :force => true do |t|
    t.string   "department", :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "departments", ["department"], :name => "index_departments_on_department", :unique => true

  create_table "priorities", :force => true do |t|
    t.string   "priority",   :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "priorities", ["priority"], :name => "index_priorities_on_priority", :unique => true

  create_table "statuses", :force => true do |t|
    t.string   "status",     :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "statuses", ["status"], :name => "index_statuses_on_status", :unique => true

  create_table "userprofiles", :force => true do |t|
    t.string   "first_name",    :limit => 30
    t.string   "last_name",     :limit => 30
    t.string   "nt_login",      :limit => 20
    t.integer  "department_id"
    t.text     "phone_number",  :limit => 20
    t.string   "email",         :limit => 80
    t.string   "job_title",     :limit => 30
    t.datetime "created_on"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "userprofiles", ["department_id"], :name => "index_userprofiles_on_department_id"
  add_index "userprofiles", ["nt_login"], :name => "index_userprofiles_on_nt_login", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "version_name", :limit => 30
    t.integer  "project_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
