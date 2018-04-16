class CustomersController < ApplicationController
  def index
    @customers = Customer.order(:id).page params[:page]
  end

  def show
  end
end
