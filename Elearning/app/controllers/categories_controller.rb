class CategoriesController < ApplicationController
	def index 
		@categories = Category.all
	end

	def show
    @category = Category.find(params[:id])
    @words = @category.words.order("RAND() LIMIT 20")
  end
end
