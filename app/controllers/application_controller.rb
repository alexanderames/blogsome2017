class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, 
    :password_confirmation, :username) }

   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, 
   :password_confirmation, :current_password, :username) }
  end
end
