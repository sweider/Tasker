class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter  :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::RoutingError, with: :record_not_found

  def after_sign_up_path_for(resource)
    edit_user_path(User.last)
  end
  
  private
  def record_not_found
      render 'public/404', status: 404
    end
end
