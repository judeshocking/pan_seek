class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if user_signed_in?
       user_homes_top_path
    else
      admin_root_path
    end
  end


  def after_sign_out_path_for(resource)
    if resource == :admin
      admin_session_path
    else user_homes_top_path
    end
  end


  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:encrypted_password])
  end
end
