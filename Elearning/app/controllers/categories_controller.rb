class CategoriesController < ApplicationController
	def index 
		@categories = Category.all
	end

	def show
    @category = Category.find_by(params[:id])
    id = params[:id]
    #@words = @category.words.find_by_sql "select * from words where (words.id not in (select distinct word_id from results)) and (category_id = id) order by rand() limit 20"
    @words = Word.find_by_sql ["select * from words where (words.id not in (select word_id from results where user_id = ?)) and (category_id = ?) order by rand() limit 20",session[:user_id],id]
    #@words = Word.find_by_sql ["select * from words where (words.id not in (select distinct word_id from results where word_id in (select word_id from results where user_id = ?))) and (category_id = ?) order by rand() limit 20",session[:id],id]
   #  @words.each do |word|
  	# 	Result.create(:user_id => session[:user_id], :word_id => word.id, :category_id => params[:id])
  	# end

  	#if there are words to learn in category, update activities table
  	#else don't update
  	if @words.count > 0
  		Activity.create(:category_id => params[:id], :word_learned_quantity => @words.count, :user_id => session[:user_id])
  	end
  end

  def check
  	show
  	@count = 0;
  	#@posts = []
  	pos = 1
  	@words.each do |word|
  		id = pos.to_s
  		if word.vi == params[id]
  			@count = @count + 1
  		else
  			params[id] = -1
  		end
  		# id = pos.to_s
  		# @posts.push(params[id])
  		pos = pos + 1
  	end
  end
end
