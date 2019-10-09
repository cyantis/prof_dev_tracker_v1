class ApplicationController < ActionController::Base
    protect_from_forgery

    def current_user
      @employee = Employee.find_by_id(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end

  def require_login
    unless logged_in?
      flash[:message] = "You must be logged in to access this page."
      redirect_to root_path
    end
  end

end
