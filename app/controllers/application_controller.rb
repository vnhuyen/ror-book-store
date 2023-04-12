class ApplicationController < ActionController::Base
  include Pagy::Backend

  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def authorized
    redirect_to login_path, alert: "You must be logged in to access this page." if current_user.nil?
  end
end
