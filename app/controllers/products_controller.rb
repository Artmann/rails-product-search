class ProductsController < ApplicationController
  def index
		if params[:query]
			@query = params[:query]
			@products = Product.where("name LIKE ?", "%#{@query}%")
		else
			@products = Product.all()
		end
  end
end
