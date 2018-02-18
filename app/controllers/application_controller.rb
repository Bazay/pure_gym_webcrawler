class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  private

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def admin_access_required!
    redirect_to root_path unless current_user && current_user.role == 'admin'
  end
end
