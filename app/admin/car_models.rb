ActiveAdmin.register CarModel do
  permit_params :car_id, :name, :basic_price, :standard_price, :premium_price, :fuel_type, basic_services_attributes: [:id, :service], 
  standard_services_attributes: [:id, :service], premium_services_attributes: [:id, :service]

  form do |f|
    f.inputs 'Car Model' do
      f.input :car, label: 'Car Type'
      f.input :name, label: 'Model Name'
      f.input :fuel_type, collection: ['Petrol', 'Diesel', 'CNG']
    end
    f.inputs 'Basic Service Plan Details' do
      f.input :basic_price, label: 'Basic Plan Price'
      f.has_many :basic_services do |bs|
        bs.inputs :service, label: 'Services'
      end
    end
    f.inputs 'Standard Service Plan Details' do
      f.input :standard_price, label: 'Standard Plan Price'
      f.has_many :standard_services do |bs|
        bs.inputs :service, label: 'Services'
      end
    end
    f.inputs 'Premium Service Plan Details' do
      f.input :premium_price, label: 'Premium Plan Price'
      f.has_many :premium_services do |bs|
        bs.inputs :service, label: 'Services'
      end
    end
    f.actions
  end
end

# create_table "car_models", force: :cascade do |t|
#   t.string "name"
#   t.string "fuel_type"
#   t.integer "car_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.integer "basic_price"
#   t.integer "standard_price"
#   t.integer "premium_price"
#   t.index ["car_id"], name: "index_car_models_on_car_id"
# end
