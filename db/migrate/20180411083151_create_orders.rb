class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.float :order_amount
      t.datetime :shipped_date
      t.integer :order_status_id

      t.timestamps
    end
  end
end
