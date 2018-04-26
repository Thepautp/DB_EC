class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, index: true
      t.references :product, index: true
    t.timestamps
    end
    add_foreign_key :cart_items, :carts
    add_foreign_key :cart_items, :products
  end
end
