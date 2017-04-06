class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters  
    devise_parameter_sanitizer.for(:sign_up) << :name
=======


  private
  #
  def user_not_authorized
    flash[:alert] = "You must be an admin to do that"
    redirect_to (request.referrer || root_path )
>>>>>>> checkpoint-3-user-sign-in-out
  end
end
