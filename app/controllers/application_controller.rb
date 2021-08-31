class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if:  :devise_controller?


protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])

  end

private

  def authenticate_userr
    if userr_signed_in?
      super
    else
      redirect_to userr_session_path
    end
  end
  end

