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

ActiveRecord::Schema.define(:version => 20130429111645) do

  create_table "aactios", :force => true do |t|
    t.string   "Recommendations"
    t.string   "Refernce"
    t.string   "Title"
    t.string   "Descriptions"
    t.string   "ExternalReference"
    t.string   "DueDate"
    t.string   "ClosedDate"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "ainits", :force => true do |t|
    t.string   "Refernce"
    t.string   "Origin"
    t.string   "Topic"
    t.string   "Standard"
    t.string   "Status"
    t.string   "Compliance"
    t.string   "Context"
    t.string   "Objective"
    t.string   "Scope"
    t.string   "Deliverables"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "arecos", :force => true do |t|
    t.string   "Title"
    t.string   "Atitle"
    t.string   "Dtitle"
    t.string   "Ctitle"
    t.string   "status"
    t.string   "auditor"
    t.string   "reference"
    t.string   "primary"
    t.string   "secondary"
    t.string   "compliance"
    t.string   "verification"
    t.string   "priority"
    t.string   "severity"
    t.date     "target"
    t.date     "closed"
    t.string   "auditee"
    t.date     "atartget"
    t.string   "apriority"
    t.string   "aseverity"
    t.string   "dependent"
    t.string   "duplicate"
    t.string   "blocked"
    t.string   "refer"
    t.string   "org"
    t.string   "level"
    t.string   "ctarget"
    t.string   "compliancetype"
    t.string   "kind"
    t.string   "ddtitle"
    t.string   "dreference"
    t.string   "description"
    t.string   "verified"
    t.string   "confidential"
    t.string   "dtype"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "arecs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areports", :force => true do |t|
    t.string   "Title"
    t.string   "Summary"
    t.string   "Source"
    t.string   "Duedate"
    t.string   "Status"
    t.integer  "Recommendations"
    t.integer  "Actions"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "new"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rcauses", :force => true do |t|
    t.string   "title"
    t.string   "reference"
    t.string   "description"
    t.integer  "period"
    t.decimal  "likelihood",         :precision => 10, :scale => 0
    t.decimal  "probability",        :precision => 10, :scale => 0
    t.integer  "occurence_count"
    t.string   "horizon_start_date"
    t.string   "horizon_end_date"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "rcrievals", :force => true do |t|
    t.string   "reference"
    t.string   "description"
    t.string   "category"
    t.string   "exp_for_eval"
    t.string   "exp_ans_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "revents", :force => true do |t|
    t.string   "title"
    t.string   "reference"
    t.string   "description"
    t.string   "category"
    t.integer  "period"
    t.decimal  "likelihood",  :precision => 10, :scale => 0
    t.decimal  "probability", :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "rgroups", :force => true do |t|
    t.string   "group_name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rinits", :force => true do |t|
    t.string   "title"
    t.string   "reference"
    t.string   "description"
    t.string   "category"
    t.integer  "review_period"
    t.string   "forced_review"
    t.string   "likelihood"
    t.string   "standard"
    t.string   "expiration_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
