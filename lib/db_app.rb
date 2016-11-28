require 'sinatra/base'

class DbApp < Sinatra::Base
  get '/' do
    'Hello DbApp!'
  end

  get '/set' do
    "Enter key/value pair"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
