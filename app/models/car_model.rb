class CarModel < ApplicationRecord
  belongs_to :car
  has_many :basic_services
  has_many :standard_services
  has_many :premium_services

  validates_presence_of :name, :fuel_type, :basic_services, :standard_services, :premium_services
  validates_numericality_of :basic_price, :standard_price, :premium_price

  accepts_nested_attributes_for :basic_services, :standard_services, :premium_services
end

# ===================================================
# Table Schema
# create_table "car_models", force: :cascade do |t|
#   t.string "name"
#   t.string "fuel_type"
#   t.integer "car_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["car_id"], name: "index_car_models_on_car_id"
# end
