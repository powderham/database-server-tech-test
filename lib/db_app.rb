require 'sinatra/base'
require 'json'

class DbApp < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/' do
    redirect
  end

  get '/set' do
    params.each {|key, value| session[:"#{key}"] = value}
    erb :set
  end

  get '/get' do
    content_type :json
    @key = params[:key]
    @value = session[:"#{@key}"]
    {"#{@key}": @value}.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
