class CreateCarModels < ActiveRecord::Migration[5.1]
  def change
    create_table :car_models do |t|
      t.string :name
      t.string :fuel_type
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
