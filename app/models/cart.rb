class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_items
  has_many :products, through: :cart_items
  
  def add_product(item_params)
    current_item = CartItem.find_by(product_id: item_params[:product][:id]) # TODO: carefull to params
    if current_item
      current_item += item_params[:product][:quantity]
      current_item.save
    else
      new_item = CartItem.create(cart_id: self.id,
                                 product_id: item_params[:product][:id],
                                 quantity: item_params[:product][:quantity])
    end
  end
end
