class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :prod_categorie_id
      t.integer :prod_type_id
      t.float :price
      t.integer :stock
      t.float :weight
      t.integer :supplier_id

      t.timestamps
    end
  end
end
