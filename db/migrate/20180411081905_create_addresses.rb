class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :zip
      t.integer :fuken_id
      t.string :addr_1
      t.string :addr_2

      t.timestamps
    end
  end
end
