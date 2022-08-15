# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def home
    uri = URI('https://api.countapi.xyz/get/1ccb732e-b55a-4404-ad3f-0f99c02fe44e')
    req = Net::HTTP.get(uri)
    @count = JSON.parse(req).values.first
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
    devise_parameter_sanitizer.permit(:account_update)
  end
end
