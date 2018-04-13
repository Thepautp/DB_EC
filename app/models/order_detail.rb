class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_one :customer, through: :order
end
