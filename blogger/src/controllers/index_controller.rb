require_relative './../app'
require_relative './../sitemap'
require 'sinatra/base'

module Shivin
  class IndexController < App
    get "/" do
      slim :index, {locals: {settings_db: settings.db, port: 2230}}
    end

    get "/generate-sitemap" do
      create_sitemap
      "success"
    end
  end
end

