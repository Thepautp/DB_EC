class ProductsController < ApplicationController
  def index
    @products = Product.where(prod_type_id: params[:format])
  end

  def show
    @product = Product.find_by_id(params[:format].to_i)
  end
end
