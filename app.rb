require 'sinatra/base'

class Meow < Sinatra::Base

  run! if app_file == $0
end
