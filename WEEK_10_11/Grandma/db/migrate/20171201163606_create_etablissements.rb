class CreateEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|
      t.string :name
      t.string :address
      t.integer :zip
      t.string :city
      t.string :type
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
