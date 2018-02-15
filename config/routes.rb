Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
	get "all_products" => "products#all_products"
	get "a_product/:product_name" => "products#a_product" 
	get "/products:id" => "products#index"
	get "/products:id" => "products#show"
	post "/products" => "products#create"
	patch "/products/:id" => "products#update"
	delete "/products/:id" => "products#destroy"
	post "/orders" => "orders#create"
	get "/orders" => "order#index"
	post "/carted_products" => "carted_products#create"
end
