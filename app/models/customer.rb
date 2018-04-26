class Customer < ApplicationRecord
  has_many :orders
  has_one :customer_address, dependent: :destroy
  has_many :order_details, through: :orders
  has_secure_password
  paginates_per 1
end
