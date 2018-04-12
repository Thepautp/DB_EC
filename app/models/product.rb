class Product < ApplicationRecord
  belongs_to :prod_categorie
  belongs_to :prod_type
  belongs_to :supplier
end
