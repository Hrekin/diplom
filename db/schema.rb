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

ActiveRecord::Schema.define(version: 20180130081644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name_building", null: false
    t.bigint "disposition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disposition_id"], name: "index_buildings_on_disposition_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name", limit: 64, null: false
    t.string "category_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_name"], name: "index_categories_on_category_name", unique: true
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name", null: false
    t.integer "department_number", null: false
    t.string "department_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_name"], name: "index_departments_on_department_name", unique: true
    t.index ["department_number"], name: "index_departments_on_department_number", unique: true
  end

  create_table "detail_models", force: :cascade do |t|
    t.string "name", null: false
    t.string "serial_number", null: false
    t.string "description", null: false
    t.date "produce_date", null: false
    t.string "manufacter", null: false
    t.string "properties", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_detail_models_on_category_id"
    t.index ["serial_number"], name: "index_detail_models_on_serial_number", unique: true
  end

  create_table "dispositions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exemplar_details", force: :cascade do |t|
    t.string "exemplar_detail_name", null: false
    t.string "exemplar_detail_description", null: false
    t.string "inventory_number", null: false
    t.bigint "detail_model_id", null: false
    t.bigint "set_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detail_model_id"], name: "index_exemplar_details_on_detail_model_id"
    t.index ["inventory_number"], name: "index_exemplar_details_on_inventory_number", unique: true
    t.index ["set_detail_id"], name: "index_exemplar_details_on_set_detail_id"
  end

  create_table "material_values", force: :cascade do |t|
    t.string "status", null: false
    t.bigint "exemplar_detail_id", null: false
    t.bigint "position_query_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exemplar_detail_id"], name: "index_material_values_on_exemplar_detail_id"
    t.index ["position_query_id"], name: "index_material_values_on_position_query_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "last_name", limit: 64, null: false
    t.string "first_name", limit: 64, null: false
    t.string "second_name"
    t.date "birthday", null: false
    t.string "email", null: false
    t.string "person_phone", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "failed_attempts", default: 3, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["department_id"], name: "index_people_on_department_id"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["last_name", "first_name", "second_name", "birthday"], name: "index_people_on_last_name_first_name_second_name_birthday", unique: true
    t.index ["last_name", "first_name", "second_name"], name: "index_people_on_last_name_and_first_name_and_second_name"
    t.index ["person_phone"], name: "index_people_on_person_phone", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_people_on_unlock_token", unique: true
  end

  create_table "person_roles", force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_roles_on_person_id"
    t.index ["role_id"], name: "index_person_roles_on_role_id"
  end

  create_table "position_queries", force: :cascade do |t|
    t.bigint "query_id", null: false
    t.bigint "detail_model_id", null: false
    t.integer "quanity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detail_model_id"], name: "index_position_queries_on_detail_model_id"
    t.index ["query_id"], name: "index_position_queries_on_query_id"
  end

  create_table "queries", force: :cascade do |t|
    t.bigint "request_id", null: false
    t.integer "quantity", null: false
    t.bigint "person_id", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_queries_on_department_id"
    t.index ["person_id"], name: "index_queries_on_person_id"
    t.index ["request_id"], name: "index_queries_on_request_id"
  end

  create_table "request_people", force: :cascade do |t|
    t.bigint "request_id", null: false
    t.bigint "person_id", null: false
    t.string "person_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_request_people_on_person_id"
    t.index ["request_id"], name: "index_request_people_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "request_name", limit: 64, null: false
    t.string "request_status", null: false
    t.string "request_urgency", null: false
    t.string "request_label"
    t.integer "request_number", null: false
    t.string "request_discription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_number"], name: "index_requests_on_request_number", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name", null: false
    t.string "role_discription", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "floor", null: false
    t.integer "room_number", null: false
    t.bigint "department_id", null: false
    t.bigint "building_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
    t.index ["department_id"], name: "index_rooms_on_department_id"
  end

  create_table "set_details", force: :cascade do |t|
    t.string "set_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "buildings", "dispositions"
  add_foreign_key "detail_models", "categories"
  add_foreign_key "exemplar_details", "detail_models"
  add_foreign_key "exemplar_details", "set_details"
  add_foreign_key "material_values", "exemplar_details"
  add_foreign_key "material_values", "position_queries"
  add_foreign_key "people", "departments"
  add_foreign_key "person_roles", "people"
  add_foreign_key "person_roles", "roles"
  add_foreign_key "position_queries", "detail_models"
  add_foreign_key "position_queries", "queries"
  add_foreign_key "queries", "departments"
  add_foreign_key "queries", "people"
  add_foreign_key "queries", "requests"
  add_foreign_key "request_people", "people"
  add_foreign_key "request_people", "requests"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "rooms", "departments"
end
