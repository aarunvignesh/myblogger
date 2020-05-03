require_relative "app"

Dir.glob('./{controllers}/*.rb').each { |file| require file}

map('/') {run Shivin::IndexController}
map('/profile') {run Shivin::ProfileController}
map('/blogs') {run Shivin::BlogController}

