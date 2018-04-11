class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :fn_furigana
      t.string :ln_furigana
      t.integer :address_id

      t.timestamps
    end
  end
end
