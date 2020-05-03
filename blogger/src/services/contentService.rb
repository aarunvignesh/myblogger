require 'faraday'

module Shivin
  class ContentService

    attr_accessor :url

    def initialize
      @url = "https://raw.githubusercontent.com"
      @git_conn = Faraday.new(@url)
    end

      def fetch_blog_article(article)
        @git_conn.get("/aarunvignesh/didactic-octo-waddle/master/public/blogs/"+article+"/content.json")
      end

    end
end