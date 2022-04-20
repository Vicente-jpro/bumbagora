class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  include UserHelper
    
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :type_subscription, :name_country, :localization_description])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :type_subscription, :name_country, :localization_description])
    end
end
