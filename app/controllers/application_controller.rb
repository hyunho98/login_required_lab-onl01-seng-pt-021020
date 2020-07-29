class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name] ||= nil
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :current_user
  end

end
