require_relative './../app'
require 'slim'
require 'sinatra/base'

module Shivin
  class BlogController < App

    get "/" do
      begin
        content = contentService.fetch_blog_home_page
        slim :blogs, {locals: content}
      rescue BlogNotFound => blog
        redirect "/not-found"
      end
    end

    get "/not-found" do
      slim :notfound
    end

    get "/blog/:article" do
      begin
        content = contentService.fetch_blog_article(params[:article])

        slim :article, {locals: content}
      rescue BlogNotFound => blog
        redirect "/not-found"
      end
    end
  end
end

