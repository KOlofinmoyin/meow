require 'sinatra/base'

class Meow < Sinatra::Base

  get '/' do
    "Welcome to Meow School"
  end
  
  run! if app_file == $0
end
