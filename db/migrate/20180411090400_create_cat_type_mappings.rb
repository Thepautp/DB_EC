class CreateCatTypeMappings < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_type_mappings do |t|
      t.integer :prod_categorie_id
      t.integer :prod_type_id

      t.timestamps
    end
  end
end
