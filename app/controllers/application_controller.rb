class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def validate_admin
    unless current_user.is_admin?
      redirect_to root_path, notice: 'You do not have access to this page!'
    end
  end
end
