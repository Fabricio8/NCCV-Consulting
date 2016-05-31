class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :Type_profiles
      t.string :name
      t.string :Documento
      t.string :addr_user
      t.string :phone
      t.references :user, index: true, foreign_key: true
      t.references :type_user, index: true, foreign_key: true
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
