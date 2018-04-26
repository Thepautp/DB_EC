class Customer < ApplicationRecord
  has_many :orders
  has_one :customer_address, dependent: :destroy
  has_many :order_details, through: :orders
  paginates_per 1
  has_secure_password
end
