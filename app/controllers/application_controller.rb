class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |t| t.permit(:teacher_id,:firstname, :lastname, :email, :password, :password_confirmation) }
  end
  protect_from_forgery with: :exception
  
end

