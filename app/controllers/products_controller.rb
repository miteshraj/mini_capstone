class ProductsController < ApplicationController
	
	def all_products
		products = Product.all

		render json: products.as_json
	end	

	def a_product
		
		product = Product.find_by(name: params["product_name"])

		render json: products.as_json
	end

	def index 
		products = Product.all 
		render json: product.as_json 
	end

	def show
		product = Product.find_by(id: params[:id])
		render json: product.as_json
	end


	def create
		product = Product.new(
			title: params[:title],
			price: params[:price],
			description: params[:description]
			)
		product.save
		render json: product.as_json
	end


	def update
		product = Product.find_by(id: params[:id])
		product.update(
			title: params[:title],
			price: params[:price]
			)
		render json: product.as_json
	end


	def destroy 
		product = Product.find_by(id: params[:id])
		product.destroy 
		render json: {message: "You have successfully destoryed this product!"}

	end
end
