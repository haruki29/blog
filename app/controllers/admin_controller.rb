class AdminController < ApplicationController
  before_action :request_login
  
  def new
    @blog = Blog.new
  end
  
  def create
  end
  
  def logout
    session[:current_user_id] = nil
    session[:current_user_name] = nil
    
    redirect_to login_login_url
  end
end
