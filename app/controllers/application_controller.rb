class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    if !session[:user_id]
      redirect_to root_path, notice: "Sign Up or login"
    end
  end

  # def student_status(student_id, assignment_id)
  #   if student_completed?(student_id, assignment_id)
  #     return "Completed"
  #   elsif student_for_review?(student_id, assignment_id)
  #     return "Up for review"
  #   else
  #     return "Incomplete"
  #   end
  # end



end
