class RenameAddressToCustomerAddress < ActiveRecord::Migration[5.1]
  def change
    rename_table :addresses, :customer_address
  end
end
