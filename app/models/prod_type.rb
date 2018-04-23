class ProdType < ApplicationRecord
  belongs_to :prod_categorie
  has_many :products
end
