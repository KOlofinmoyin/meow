require 'sinatra/base'
require 'net/http'

class Meow < Sinatra::Base

  get '/' do
    erb :homepage
  end

  get '/students' do
    endpoint = 'https://api.thecatapi.com/v1/images/search?breed_ids=beng&limit=15&page=0&order=DESC'
    uri = URI.parse(URI.encode(endpoint))
    api_response = Net::HTTP.get(uri)
    @images = JSON.parse(api_response)
    erb :students
  end

  run! if app_file == $0
end
