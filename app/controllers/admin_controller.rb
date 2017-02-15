class AdminController < ApplicationController
  def admin
  end
  
  def logout
    session[:current_user_id] = nil
    session[:current_user_name] = nil
    
    redirect_to login_login_url
  end
end
