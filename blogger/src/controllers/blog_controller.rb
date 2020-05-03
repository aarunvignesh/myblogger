require_relative './../app'
require 'slim'
require 'sinatra/base'

module Shivin
  class BlogController < App
    get "/:article" do

      content = contentService.fetch_blog_article(params[:article])
      if content.success?
        slim :blogs, {locals: JSON.parse(content.body)}
      else
        redirect "/not-found"
      end
    end
  end
end

