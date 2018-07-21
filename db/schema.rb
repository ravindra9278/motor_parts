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

ActiveRecord::Schema.define(version: 20180714095848) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "basic_services", force: :cascade do |t|
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_model_id"
    t.index ["car_model_id"], name: "index_basic_services_on_car_model_id"
  end

  create_table "car_models", force: :cascade do |t|
    t.string "name"
    t.string "fuel_type"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "basic_price"
    t.integer "standard_price"
    t.integer "premium_price"
    t.index ["car_id"], name: "index_car_models_on_car_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_cars_on_slug"
  end

  create_table "premium_services", force: :cascade do |t|
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_model_id"
    t.index ["car_model_id"], name: "index_premium_services_on_car_model_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standard_services", force: :cascade do |t|
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_model_id"
    t.index ["car_model_id"], name: "index_standard_services_on_car_model_id"
  end

end
