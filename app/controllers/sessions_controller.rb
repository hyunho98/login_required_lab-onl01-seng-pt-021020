class SessionsController < ApplicationController

  def current_user
    session[:user] ||= []
end
