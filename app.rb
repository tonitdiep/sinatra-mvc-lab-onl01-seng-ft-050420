require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  # get '/new' do 
  # end
  post '/piglatinize' do 
    @text = params[:user_phrase]
    @piglatinizer = PigLatinizer.new
    erb :piglatinize
  end
end