class ApplicationController < ActionController::Base
  layout 'application'
  protected

  def library
    session[:library] ||= Library.new
  end

  def admin
    @admin = Admin.first
  end
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

   
end
