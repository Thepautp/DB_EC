class ProdTypesController < ApplicationController
  
  def show
    @products = ProdType.find_by_id(params[:type]).products
    render "products/index"
  end
end
