require "sinatra/base"
require "sinatra/config_file"
require 'slim'

require_relative './services/contentService'

module Shivin
    class App < Sinatra::Base
        register Sinatra::ConfigFile

        config_file "./config/config.yaml"

        set :environments, %w{ development stage production}

        set environment: "development"

        set :public_folder, File.join(root, "/public")

        def contentService
            ContentService.new
        end

        helpers do
            def render_module(location, data)
                render :slim, :"#{location}", locals: data
            end
        end

        error Sinatra::NotFound do
            redirect "/not-found"
        end
        #get "/" do
        #     slim :index , {locals: {settings_db: settings.db, port: settings.db["port"]}}
        #end
    end
end

