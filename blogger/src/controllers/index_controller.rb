require_relative './../app'
require 'sinatra/base'

module Shivin
  class IndexController < App
    get "/" do
      slim :index, {locals: {settings_db: settings.db, port: 2230}}
    end

    get "/not-found" do
      slim :notfound
    end
  end
end

