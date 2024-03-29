class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if user_signed_in?
       root_path
    else
      admin_root_path
    end
  end


  def after_sign_out_path_for(resource)
    if resource == :admin
      admin_session_path
    else new_user_session_path
    end
  end


  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:encrypted_password,:screen_name])
  end
end
