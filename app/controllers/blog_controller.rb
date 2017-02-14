class BlogController < ApplicationController
  def index
    @blogs = Blog.all
    
    @root = Rails.application.config.blog['site']['title']
  end
end
