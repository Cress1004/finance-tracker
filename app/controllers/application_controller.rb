class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

 protected
 #
 # def configure_permitted_parameters
 #   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
 # end

 def configure_permitted_parameters
   # added_attrs = [:first_name,:last_name,:email, :password, :password_confirmation, :remember_me,:image]
   added_attrs = [:first_name,:last_name,:email, :image]
   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
 end

end
