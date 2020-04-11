require "sinatra/base"
require "sinatra/config_file"
require 'slim'
module Shivin
    class App < Sinatra::Base
        register Sinatra::ConfigFile

        set :environments, %w{ development stage production}

        set environment: "development"

        config_file "./config/config.yaml"

        get "/" do
            @data = 'new data from shivin'
            @settings = settings.db['host']
            slim :index
        end
    end
end

