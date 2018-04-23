class SuppliersController < ApplicationController
  def index
  end

  def show
    # id = params[:format].empty? ? params[:id] : params[:format]
    @supplier = Supplier.find_by(params[:id])
  end
end
