module SessionsHelper
  
  def log_in(customer)
    p customer.id
    session[:customer_id] = customer.id
  end
  
  def current_user
    @current_customer ||= Customer.find_by_id(session[:customer_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:customer_id)
    @current_customer = nil
  end
end
