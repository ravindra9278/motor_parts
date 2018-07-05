class CreateBasicSerivces < ActiveRecord::Migration[5.1]
  def change
    create_table :basic_serivces do |t|
      t.string :service

      t.timestamps
    end
  end
end
