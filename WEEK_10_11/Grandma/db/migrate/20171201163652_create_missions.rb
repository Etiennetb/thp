class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :name
      t.text :body
      t.references :benevole, foreign_key: true
      t.references :etablissement, foreign_key: true

      t.timestamps
    end
  end
end
