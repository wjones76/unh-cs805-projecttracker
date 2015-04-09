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

ActiveRecord::Schema.define(:version => 20150404215735) do

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

  create_table "project_tasks", :force => true do |t|
    t.integer  "project_id"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "project_tasks", ["project_id"], :name => "index_project_tasks_on_project_id"
  add_index "project_tasks", ["task_id"], :name => "index_project_tasks_on_task_id"

  create_table "projects", :force => true do |t|
    t.string   "project_name",         :limit => 120
    t.integer  "department_id"
    t.text     "description"
    t.text     "return_on_investment"
    t.string   "submitted_by",         :limit => 20
    t.integer  "status_id"
    t.datetime "created_on"
    t.integer  "version_id"
    t.integer  "category_id"
    t.datetime "deliver_date"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "projects", ["category_id"], :name => "index_projects_on_category_id"
  add_index "projects", ["department_id"], :name => "index_projects_on_department_id"
  add_index "projects", ["project_name"], :name => "index_projects_on_project_name", :unique => true
  add_index "projects", ["status_id"], :name => "index_projects_on_status_id"
  add_index "projects", ["version_id"], :name => "index_projects_on_version_id"

  create_table "roles", :force => true do |t|
    t.string   "role_name",   :limit => 50
    t.text     "description"
    t.string   "created_by"
    t.datetime "created_on"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "roles", ["role_name"], :name => "index_roles_on_role_name", :unique => true

  create_table "statuses", :force => true do |t|
    t.string   "status",     :limit => 30
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "statuses", ["status"], :name => "index_statuses_on_status", :unique => true

  create_table "tasks", :force => true do |t|
    t.string   "task_name",   :limit => 120
    t.text     "description"
    t.integer  "priority_id"
    t.string   "assigned_to", :limit => 20
    t.integer  "category_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "version",     :limit => 20
    t.integer  "status_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "tasks", ["category_id"], :name => "index_tasks_on_category_id"
  add_index "tasks", ["priority_id"], :name => "index_tasks_on_priority_id"
  add_index "tasks", ["status_id"], :name => "index_tasks_on_status_id"

  create_table "user_profile_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "userprofile_id"
    t.datetime "created_on"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "user_profile_roles", ["role_id"], :name => "index_user_profile_roles_on_role_id"
  add_index "user_profile_roles", ["userprofile_id"], :name => "index_user_profile_roles_on_userprofile_id"

  create_table "userprofiles", :force => true do |t|
    t.string   "first_name",    :limit => 30
    t.string   "last_name",     :limit => 30
    t.string   "nt_login",      :limit => 20
    t.integer  "department_id"
    t.string   "phone_number",  :limit => 20
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

  create_table "workflows", :force => true do |t|
    t.string   "workflow_name", :limit => 50
    t.integer  "department_id"
    t.text     "description"
    t.string   "created_by"
    t.integer  "status_id"
    t.datetime "created_on"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "workflows", ["department_id"], :name => "index_workflows_on_department_id"
  add_index "workflows", ["status_id"], :name => "index_workflows_on_status_id"
  add_index "workflows", ["workflow_name"], :name => "index_workflows_on_workflow_name", :unique => true

end
