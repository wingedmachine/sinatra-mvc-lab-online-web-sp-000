require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    binding.pry
    "#{PigLatinizer.new.piglatinize(params[:user_phrase])}"
  end
end
