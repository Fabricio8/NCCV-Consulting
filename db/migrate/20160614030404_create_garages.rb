class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.string :dimension
      t.string :observation
      t.string :address
      t.string :reference
      t.string :location
      t.string :latitude
      t.string :length
      t.string :accuracy
      t.references :profile, index: true, foreign_key: true
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
