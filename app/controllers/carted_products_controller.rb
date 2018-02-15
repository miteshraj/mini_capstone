class CartedProductsController < ApplicationController

	def create
		carted_product = Carted_Product.new(
			title: params[:title],
			price: params[:price],
			image_url: params[:image_url]
			)
		if carted_product.save
			render json: carted_product.as_json
		else 
			render json: {carted_product.errors.full_messages, status: :unprocessable_entity}
		end

	end

	def index
		

	end

end
