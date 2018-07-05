class CreateBasicSerivces < ActiveRecord::Migration[5.1]
  def change
    create_table :basic_services do |t|
      t.string :service

      t.timestamps
    end
  end
end
