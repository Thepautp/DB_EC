class CartsController < ApplicationController
  before_action :set_cart, only: [:create, :destroy]
  before_action :set_cart_item, only: [:destroy]
  
  def create
    @cart = add_product(params) #save items to cart_items
    
    if @cart.save
      p "Cart => save"
      redirect_to cart_path
    else
      p "Cart => ERROR"
      redirect_to root_url
    end
  end

  def destroy
    @cart_item.destroy
    redirect_to cart_path
  end
  
  private
  
  def set_cart_item
    @cart_item = CartItem.find_by_id(params[:cart_item_id])
  end
  
  def cart_item_params
    params.require(:cart_item).permit(:product_id, :cart_id, :quantity)
  end
end
