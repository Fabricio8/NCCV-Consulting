class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :codigo_departamento
      t.text :nombre_departamento

      t.timestamps null: false
    end
  end
end
