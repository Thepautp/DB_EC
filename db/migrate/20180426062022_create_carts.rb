class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :customer, index: true
      
    t.timestamps
    end
    add_foreign_key :carts, :customers
  end
end
