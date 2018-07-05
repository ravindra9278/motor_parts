class AddCarModelToStandardServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :standard_services, :car_model, foreign_key: true
  end
end
