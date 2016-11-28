require 'sinatra/base'

class DbApp < Sinatra::Base
  enable :sessions

  get '/' do
    redirect
  end

  get '/set' do
    params.each {|key, value| session[:"#{key}"] = value}
    erb :set
  end

  get '/get' do
    @key = params[:key]
    @value = session[:"#{@key}"]
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
