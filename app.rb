require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

get('/') do
  erb(:index)
end

get('/result') do
  @user_sentence = params.fetch('user_sentence')
  @user_word = params.fetch('user_word')
  @result = @user_sentence.word_count(@user_word)
  erb(:result)
end
