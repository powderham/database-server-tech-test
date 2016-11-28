require 'sinatra/base'
require 'json'
require_relative 'models/pair.rb'

configure

class DbApp < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/' do
    redirect
  end

  get '/set' do
    params.each {|key, value| Pair.create(keyInput: key, valueInput: value)}
  end

  get '/get' do
    content_type :json
    @key = params[:key]
    @value = Pair.first(keyInput: "#{@key}").valueInput
    {"#{@key}": @value}.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
