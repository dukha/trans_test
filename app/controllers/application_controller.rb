class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter  :set_locale
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  def set_locale
    logger.debug "Param locale = " + (params[:locale]==nil ? "nil" : params[:locale].to_s)
    logger.debug "Session locale = " + (session[:locale] ==nil ? "nil" : session[:locale].to_s)
    I18n.locale = session[:locale] = params[:locale] || session[:locale] || :en #extract_locale_from_accept_language_header
    logger.info "Locale set to " + I18n.locale.to_s
  end
end
