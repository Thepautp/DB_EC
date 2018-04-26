class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :set_locale, :set_cart
  
  
  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      l = cookies[:educator_locale].to_sym
    else
      l = I18n.default_locale
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end
  def default_url_options
      { locale: I18n.locale }
  end
  
  private
  
  def set_cart
    @cart = Cart.find_by_id(session[:cart_id])
    p @cart
    unless @cart
      # TODO: error when no loggin, create default customer_id when no loggin
      @cart = Cart.create(customer_id: session[:customer_id])
      session[:cart_id] = @cart.id
    end
  end
end
