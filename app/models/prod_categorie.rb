class ProdCategorie < ApplicationRecord
  has_many :prod_types
  has_many :products
end
