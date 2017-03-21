class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = Student.find_by(student_lrn: params[:session][:student_lrn])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      session[:student_lrn] = user.student_lrn
	  redirect_to "/students/home"
    else
      # Create an error message.
	  flash[:danger] = "Invalid LRN and Password combination"
      redirect_to "/login" 
    end
  end
  
  def destroy
    session[:student_lrn] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to "/login"
  end
end
