class ApplicationController < ActionController::Base

  helper_method :user_signed_in?, :current_user

  private
  
  def user_signed_in?
    current_user != nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_token])
  end

  def authenticate_user!
    redirect_to root_path, notice: "請登入會員" if not user_signed_in?
  end
end
