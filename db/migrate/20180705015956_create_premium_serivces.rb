class CreatePremiumSerivces < ActiveRecord::Migration[5.1]
  def change
    create_table :premium_serivces do |t|
      t.string :service

      t.timestamps
    end
  end
end
