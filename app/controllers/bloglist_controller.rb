class BloglistController < ApplicationController
  def index
    @blogs = Blog.all
    
    @month_blogs = MonthBlog.all
  end
end
