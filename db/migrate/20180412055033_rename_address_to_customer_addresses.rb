class RenameAddressToCustomerAddresses < ActiveRecord::Migration[5.1]
  def change
    rename_table :customer_address, :customer_addresses
  end
end
