class WordsController < ApplicationController
  def index
  	if params['category'] && params['learn']
  		if params['learn'] == 'all'
  			@words = Word.find_by_sql ["select * from words where category_id = ?",params['category']]
  		end
  		if params['learn'] == 'learned'
  			@words = Word.find_by_sql ["select * from words where (words.id in (select word_id from results where user_id = ?)) and (category_id = ?)",session[:user_id],params['category']]
  		end
  		if params['learn'] == 'notlearned'
  			@words = Word.find_by_sql ["select * from words where (words.id not in (select word_id from results where user_id = ?)) and (category_id = ?)",session[:user_id],params['category']]
  		end
  	end
  end

  def new
  	@word = Word.new
  end
end
