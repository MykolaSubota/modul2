class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def show
		
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render :new
		end
	end
	def eidt
		
	end
	def update
		
	end
	def destroy
		
	end
	def product_params
		params.require(:product).permit(:title, :description, :price)
	end
end
