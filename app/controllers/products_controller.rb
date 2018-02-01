class ProductsController < ApplicationController
	
	before_action :authenticate_admin, except: [:index, :show]

	def all_products
		products = Product.all

		render json: products.as_json
	end	

	def a_product
		
		product = Product.find_by(name: params["product_name"])

		render json: products.as_json
	end

	def index 
		products = Product.all.order(title: :desc)

		search_term = params[:search]

		if search_term
			products = Product.all.order(title: :desc).where("title LIKE ?", "%#{search_term}%") # % - searches for % 
		end

		render json: product.as_json 
	end

	def show
		product = Product.find_by(id: params[:id])
		render json: product.as_json
	end


	def create
		if current_user and current_user.admin
		product = Product.new(
			title: params[:title],
			price: params[:price],
			image_url: params[:image_url]
			)
		if product.save
			render json: product.as_json
		else 
			render json: {product.errors.full_messages, status: :unprocessable_entity}
		end

	end


	def update
		if current_user and current_user.admin
		product = Product.find_by(id: params[:id])
		product.title = params[:title] || product.title
		product.description = params[:description] || product.description
		product.price = params[:price] || product.price
		product.image_url = params[:image_url] || product.image_url
		product.save

		render json: product.as_json
	end


	def destroy 
		if current_user and current_user.admin 
		product = Product.find_by(id: params[:id])
		product.destroy 
		render json: {message: "You have successfully destoryed this product!"}

	end
end
