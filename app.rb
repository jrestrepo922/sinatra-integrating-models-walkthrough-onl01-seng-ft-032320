require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    #creating a instance of the TexAnalyzer classand assinging it to the instance variable @analyzed_text
    @analyzed_text = TextAnalyzer.new(text_from_user) 
    erb :results
  end
end
