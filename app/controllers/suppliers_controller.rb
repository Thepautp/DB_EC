class SuppliersController < ApplicationController
  def index
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
  end
end
