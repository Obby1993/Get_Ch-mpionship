class ApplicationController < ActionController::Base


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :age, :gender, :address, :main_sport, :medical_certificate, :role, :organism, :company_name, :company_type])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number, :age, :gender, :address, :main_sport, :medical_certificate, :role, :organism, :company_name, :company_type])
  end
  before_action :authenticate_user!, except: [:index, :show]

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
