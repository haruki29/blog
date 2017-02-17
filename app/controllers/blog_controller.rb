require 'redcarpet'
require 'redcarpet/render_strip'

class BlogController < ApplicationController
  
  class HTMLwithPygments < Redcarpet::Render::HTML
      def block_code(code, language)
        language = "text" if language.blank?
        sha = Digest::SHA1.hexdigest(code)
        Rails.cache.fetch ["code", language, sha].join("-") do
          Pygments.highlight(code, :lexer => language)
        end
      end
    end
  
  def index
    @title = Rails.application.config.blog['site']['title']
    
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
    @markdown = markdown(@blog.content)
  end
  
  
  private
  def markdown(text)
    renderer = HTMLwithPygments.new({
          :filter_html => true,
          :hard_wrap => true,
          :link_attributes => {:rel => 'external nofollow'}
        })

        options = {
          :autolink => true,
          :no_intra_emphasis => true,
          :fenced_code_blocks => true,
          :lax_html_blocks => true,
          :strikethrough => true,
          :superscript => true,
          :tables => true
        }
        
        Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
