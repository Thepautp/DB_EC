class CreateSupplierAddress < ActiveRecord::Migration[5.1]
  def change
    create_table :supplier_addresses do |t|
      t.belongs_to :supplier, index: true
      t.belongs_to :fuken, index: true
      t.string :zip
      t.string :addr_1
      t.string :addr_2
    end
  end
end
