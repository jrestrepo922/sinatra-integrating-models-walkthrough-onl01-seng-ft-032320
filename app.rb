require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = 
    #creating a instance of the TexAnalyzer class and assinging it to the instance variable @analyzed_text
    @analyzed_text = TextAnalyzer.new(params[:user_text]) 
    erb :results
  end
end
