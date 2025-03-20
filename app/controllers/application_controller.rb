class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def show
    @user = current_user
  end

  protected

  def configure_permitted_parameters
    # Permite o campo name no sign_up e o campo avatar no sign_up e no account_update
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end
end
