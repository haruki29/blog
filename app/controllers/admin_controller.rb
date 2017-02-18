class AdminController < ApplicationController
  before_action :request_login
  skip_before_filter :verify_authenticity_token, :only => :create
  
  def new
  end
  
  def create
    
    @title = params['title']
    @content = params['content']
    
    if @title == nil || @title.size == 0
      flash[:notice] = '没有输入标题!'
      redirect_to admin_new_url
      return 
    end
    
    if @content == nil || @content.size == 0
      flash[:notice] = '没有输入内容!'
      redirect_to admin_new_url
      return
    end
    
    blog_date = Time.now.to_s[0..6]
    
    @month_blog = MonthBlog.find_by_blog_date(blog_date)
    if @month_blog == nil
      @month_blog = MonthBlog.new
      @month_blog.blog_date = blog_date
      @month_blog.title = blog_date
    end
    
    @blog = @month_blog.blogs.build(:title => @title, :content => @content)
    @blog.save
    
    redirect_to root_url
  end
  
  def logout
    session[:current_user_id] = nil
    session[:current_user_name] = nil
    
    redirect_to login_login_url
  end
end
