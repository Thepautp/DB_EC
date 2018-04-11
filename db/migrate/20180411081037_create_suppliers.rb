class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.integer :address_id

      t.timestamps
    end
  end
end
