require 'redcarpet'

class BlogController < ApplicationController
  def index
    @title = Rails.application.config.blog['site']['title']
    
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
    @markdown_content = Redcarpet.new(@blog.content).html_safe
  end
end
