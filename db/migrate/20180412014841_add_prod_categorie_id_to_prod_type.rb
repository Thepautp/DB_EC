class AddProdCategorieIdToProdType < ActiveRecord::Migration[5.1]
  def change
    add_column :prod_types, :prod_categorie_id, :integer
  end
end
