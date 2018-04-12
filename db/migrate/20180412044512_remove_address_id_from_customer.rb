class RemoveAddressIdFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :address_id, :integer
  end
end
