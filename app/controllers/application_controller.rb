class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_guest
    @current_guest ||= Guest.find session[:guest_id] if session[:guest_id]
  end

  alias :current_user :current_guest
end
