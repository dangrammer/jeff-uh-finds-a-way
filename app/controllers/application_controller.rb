class ApplicationController < ActionController::Base
  before_action :require_login
  helper_method :logged_in?
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    redirect_to login_path unless logged_in?
  end

end
