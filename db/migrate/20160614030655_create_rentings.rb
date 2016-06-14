class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      t.string :name
      t.decimal :cost
      t.date :start_date
      t.date :end_date
      t.integer :state
      t.datetime :start_hour
      t.datetime :end_hour
      t.references :garage, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
