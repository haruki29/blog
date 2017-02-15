class LoginController < ApplicationController
  def login
    @user = User.find_by_id(session[:current_user_id])
    if @user != nil 
      redirect_to admin_admin_url
    end
    
    @user = User.new
  end
  
  def create
    @name = params[:user][:name]
    @hash_pwd = params[:user][:hash_pwd]
    
    if @name == nil || @name.size == 0
      flash[:notice] = '登录名为空!'
      redirect_to login_login_url
      return
    end
    
    if @hash_pwd == nil || @hash_pwd.size == 0
      flash[:notice] = '密码为空!'
      redirect_to login_login_url
      return
    end
    
    @hash_pwd = PublicHelper.md5(@hash_pwd)
    
    @user = User.find_by_name(@name)
    if @user == nil 
      flash[:notice] = '没找到此用户!'
      redirect_to login_login_url
      return
    end
    
    if @user.hash_pwd != @hash_pwd
      flash[:notice] = '登录密码错误!'
      redirect_to login_login_url
      return
    end
    
    session[:current_user_id] = @user.id
    session[:current_user_name] = @user.name
    
    redirect_to admin_admin_url
  end
end
