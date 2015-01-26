require_relative '../models/word'

get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/:name' do
    string = params[:name]
    @word = Word.anagram(string)
      "The anagram for #{string} is  \n #{@word}"
      # " #{word}!"
end

