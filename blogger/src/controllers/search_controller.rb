require_relative './../app'
require 'sinatra/base'

module Shivin
  class SearchController < App
    get "/" do
      slim :search
    end
  end
end