class CategoriesController < ApplicationController

	def show
    	@category = Category.find params[:id]
    	okok = []

    	@okok = okok.push(@category['id'])
	    @files = Gist.find_all_by_cat(@okok)

	end

	def index
	end
end
