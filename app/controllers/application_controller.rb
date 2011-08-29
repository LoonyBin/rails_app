class ApplicationController < ActionController::Base
  include Clearance::Authentication
  # load_and_authorize_resource
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to sign_in_path and return unless current_user
    begin
      redirect_to :back, :alert => exception.message
    rescue ActionController::RedirectBackError
      redirect_to :root, :alert => exception.message
    end
  end
end
