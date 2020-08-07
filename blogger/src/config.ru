require_relative "app"

Dir.glob('./{controllers}/*.rb').each { |file| require file}

map('/about') {run Shivin::IndexController}
map('/profile') {run Shivin::ProfileController}
map('/search') {run Shivin::SearchController}
map('/') {run Shivin::BlogController}

