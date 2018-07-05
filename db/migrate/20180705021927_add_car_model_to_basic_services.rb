class AddCarModelToBasicServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :basic_services, :car_model, foreign_key: true
  end
end
