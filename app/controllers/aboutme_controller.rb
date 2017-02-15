class AboutmeController < ApplicationController
  def index
    @title = Rails.application.config.blog['site']['title']
  end
end
