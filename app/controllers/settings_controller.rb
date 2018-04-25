class SettingsController < ApplicationController
  def change_locale
    p "ici"
    l = params[:locale].to_s.strip.to_sym
    p l
    l = I18n.default_locale unless I18n.available_locales.include?(l)
    cookies.permanent[:educator_locale] = l
    redirect_to request.referer || root_url
  end
end
