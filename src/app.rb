require "sinatra/base"
require "sinatra/config_file"
require 'slim'

module Shivin
    class App < Sinatra::Base
        register Sinatra::ConfigFile

        set :environments, %w{ development stage production}

        set environment: "development"

        set :public_folder, File.join(root, "/public")

        config_file "./config/config.yaml"


        #get "/" do
        #     slim :index , {locals: {settings_db: settings.db, port: settings.db["port"]}}
        #end
    end
end

