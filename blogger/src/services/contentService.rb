require 'faraday'
require_relative './../exceptions/blog_not_found'

module Shivin
  class ContentService

    attr_accessor :host

    def initialize
      @host = "https://raw.githubusercontent.com"
      @blog_url = "/aarunvignesh/didactic-octo-waddle/master/public/blogs/"
      @blog_home_url = "/aarunvignesh/didactic-octo-waddle/master/public/blog_home/content.json"
      @file_name = "content.json"
      @home_content = {}
    end

    def fetch_blog_article(article)
      git_conn = Faraday.new(@host)
      content = git_conn.get(@blog_url + article+"/"+@file_name)
      begin
        if content.success?
          JSON.parse(content.body)
        else
          raise BlogNotFound.new({code: 404, message: "Blog not found"})
        end
      rescue
        raise BlogNotFound.new({code: 500, message: "Blog found but parsing error"})
      end

    end

    def fetch_blog_home_page
      git_conn = Faraday.new(@host)
      content = git_conn.get(@blog_home_url)
      begin
        if content.success?
          @home_content = JSON.parse(content.body)
        else
          @home_content
        end
      rescue
        @home_content
      end

    end

    end
end