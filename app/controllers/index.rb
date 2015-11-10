get '/' do
  erb :index
end

get '/:new_word' do

	@new_word = params[:new_word]
  @list_terms = Word.anagrams_of(@new_word)
  #Word.where(term: "bear")
  erb :word
end

post '/new_word' do

  redirect to ("/#{params[:user_word]}")

end