class HomePageController < ApplicationController
  def home
    @categories = ProdCategorie.all
    sorted_products = OrderDetail.group(:product_id).count
    ordered_products = Hash[sorted_products.sort_by{|k,v| v}.reverse].keys
    all_ninki_product = Product.find(ordered_products.first(5))
    @best_seller = all_ninki_product.delete_at(0)
    @ninki_product = all_ninki_product
    products = Product.find(ordered_products)
    @soon_sold_out = products.delete_if {|prod| prod.stock >=5 || prod.stock == 0}
    @message = t(:hello_you)
  end
end
 
