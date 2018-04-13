class CustomersController < ApplicationController
  def index
    puts "coucou"
    @customers = Customer.all
  end

  def show
  end
end
