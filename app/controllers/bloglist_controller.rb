class BloglistController < ApplicationController
  def index
    @blogs = Blog.all
  end
end
