class CreateAssemblies < ActiveRecord::Migration[5.1]
  def change
    create_table :assemblies do |t|
      t.string :name
		t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
