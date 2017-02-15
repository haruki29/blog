class PictureController < ApplicationController
  def index
    @title = Rails.application.config.blog['site']['title']
  end
end
