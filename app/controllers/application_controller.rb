class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  include SessionsHelper

  def current_user
    @_current_user ||= session[:student_lrn] &&
      Student.find_by(student_lrn: session[:student_lrn])
  end
end
