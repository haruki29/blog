class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
  def is_login
    @user = User.find_by_id(session[:current_user_id])
    return @user != nil
  end
  
  def request_login
    
    if is_login == false
      
      redirect_to login_login_url
    end
  end
  
end
