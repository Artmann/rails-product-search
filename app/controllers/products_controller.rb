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
			query = params[:term]
			names = Product.where("name LIKE ?", "%#{query}%").map { |product| product.name }
		else
			names = []
		end
		render :json => names
	end
	
end
