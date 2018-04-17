class ProductsController < ApplicationController
  def index
    @products = Product.where(prod_type_id: params[:format])
  end

  def show
  end
end
