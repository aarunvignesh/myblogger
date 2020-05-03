require_relative './../app'
require 'sinatra/base'

module Shivin
  class ProfileController < App
    get "/" do
      slim :profile
    end
  end
end