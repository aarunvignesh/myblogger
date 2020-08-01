require_relative "app"

Dir.glob('./{controllers}/*.rb').each { |file| require file}

map('/about') {run Shivin::IndexController}
map('/profile') {run Shivin::ProfileController}
map('/') {run Shivin::BlogController}

