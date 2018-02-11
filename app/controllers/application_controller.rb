class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?#, only: [:new, :edit]
  # before_action :require_no_authentication, only: [:new, :create, :cancel]




 	protected
    	def configure_permitted_parameters
      	devise_parameter_sanitizer.permit(:new) { |u| u.permit(:password, :password_confirmation, :last_name, :first_name, :second_name, :birthday, :email, :person_phone, :department_id) }
      	devise_parameter_sanitizer.permit(:edit) { |u| u.permit(:password, :password_confirmation, :current_password, :last_name, :first_name, :second_name, :birthday, :email, :person_phone, :department_id) }
      	#devise_parameter_sanitizer.permit(:edit) { |u| u.permit(:password, :password_confirmation) } 
      	#devise_parameter_sanitizer.permit(:people/edit) { |u| u.permit(:password, :password_confirmation) } 
    	end
end
