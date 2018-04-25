class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  
  
  def set_locale
    I18n.locale = locale_in_params || I18n.default_locale
    p"Locale set: #{I18n.locale}"
  end
  def default_url_options
    { locale: I18n.locale }
  end
 
  # Get locale from top-level domain or return +nil+ if such locale is not available
  # You have to put something like:
  #   127.0.0.1 application.com
  #   127.0.0.1 application.it
  #   127.0.0.1 application.pl
  # in your /etc/hosts file to try this out locally
  def extract_locale_from_tld
    parsed_locale = request.host.split('.').last
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end
  
  def locale_in_params
    if params[:locale].present?
      params[:locale].to_sym.presence_in(I18n::available_locales) || I18n.default_locale
    else
      nil
    end
  end

end
