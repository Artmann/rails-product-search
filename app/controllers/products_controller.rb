class ProductsController < ApplicationController
  def index
		if params[:query]
			@query = params[:query]
			@products = Product.where("name LIKE ?", "%#{@query}%")
		else
			@products = Product.all()
		end
  end
	
	def suggestions
		if params[:term]
			term = params[:term]
			names = ProductSuggestion.terms_for(term)
		else
			names = []
		end
		render :json => names
	end
	
end
