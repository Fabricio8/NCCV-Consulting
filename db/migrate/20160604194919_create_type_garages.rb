class CreateTypeGarages < ActiveRecord::Migration
  def change
    create_table :type_garages do |t|
      t.string :Des_typegarage
      t.string :no_ceiling
      t.string :yes_ceiling

      t.timestamps null: false
    end
  end
end
