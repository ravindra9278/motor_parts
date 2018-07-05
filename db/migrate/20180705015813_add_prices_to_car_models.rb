class AddPricesToCarModels < ActiveRecord::Migration[5.1]
  def change
    add_column :car_models, :basic_price, :integer
    add_column :car_models, :standard_price, :integer
    add_column :car_models, :premium_price, :integer
  end
end
