class CreateStandardSerivces < ActiveRecord::Migration[5.1]
  def change
    create_table :standard_services do |t|
      t.string :service

      t.timestamps
    end
  end
end
