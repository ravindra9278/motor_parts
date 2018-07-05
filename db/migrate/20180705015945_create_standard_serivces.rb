class CreateStandardSerivces < ActiveRecord::Migration[5.1]
  def change
    create_table :standard_serivces do |t|
      t.string :service

      t.timestamps
    end
  end
end
