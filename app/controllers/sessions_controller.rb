class SessionsController < ApplicationController
  def new
  end
  
  def create
    customer = Customer.find_by(email: params[:session][:email].downcase) #params name a verif
    if customer && customer.authenticate(params[:session][:password])
      p "LOG OK"
      log_in customer
      redirect_to request.referer || root_url
    else
      p " NOT GOOD"
      redirect_to request.referer || root_url
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
