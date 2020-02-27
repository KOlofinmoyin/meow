require 'sinatra/base'

class Meow < Sinatra::Base

  get '/' do
    erb :home_page
  end

  run! if app_file == $0
end
