# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(_resource)
    trivia_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :avatar) }

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:avatar, :first_name, :last_name, :age, :current_password)
    end
  end
end
