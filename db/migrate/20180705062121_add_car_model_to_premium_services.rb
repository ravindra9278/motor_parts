class AddCarModelToPremiumServices < ActiveRecord::Migration[5.1]
  def change
    add_reference :premium_services, :car_model, foreign_key: true
  end
end
