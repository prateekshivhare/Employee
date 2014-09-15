class ApplicationController < ActionController::Base
  layout 'standard'

  protected

def authenticate_user
  if session[:user_id]
     # set current user object to @current_user object variable
    @current_user = user.find session[:user_id]
    return true
  else
    redirect_to(:controller => 'session', :action => 'login')
    return false
  end
end

def save_login_state
  if session[:user_id]
    redirect_to(:controller => 'session', :action => 'home')
    return false
  else
    return true
  end

end




  # application controller

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # From authlogic
  #filter_parameter_logging :password, :password_confirmation
  helper_method :current_user_session, :current_user

  private
  def current_user_session
    @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user ||= current_user_session && current_user_session.user
  end
end

