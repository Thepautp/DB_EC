class Supplier < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one :supplier_address, dependent: :destroy
end
