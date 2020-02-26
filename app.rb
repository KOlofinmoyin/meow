require 'sinatra/base'
require 'net/http'

class Meow < Sinatra::Base

  get '/' do
    endpoint = 'https://api.thecatapi.com/v1/images/search?breed_ids=beng&limit=3&page=100&order=DESC'
    puts 'Working'
    uri = URI.parse(URI.encode(endpoint))
    api_response = Net::HTTP.get(uri)
    @data = JSON.parse(api_response)
    erb :index
  end

  run! if app_file == $0

end
