class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.integer :cod_distrito
      t.string :nom_distrito
      t.references :departamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
