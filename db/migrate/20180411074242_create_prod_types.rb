class CreateProdTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :prod_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
