class BlogController < ApplicationController
  def index
    @title = Rails.application.config.blog['site']['title']
    
    @blogs = Blog.all
  end
end
