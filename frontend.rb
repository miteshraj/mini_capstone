require 'unirest'

system "clear"

puts "Welcome to the Product app! Select an option: "

puts "[1] See all Products"
puts "[1.5] To search for a product"
puts "[2] See one Product"
puts "[3] Create a product"
puts "[4] To Sign up!"
puts "[6] To login!"
puts "[7] To create an order"
puts "[8] To show all products in a category"
puts "[9] To add an item to your cart"

input = gets.chomp 


if input == "1"
	response = Unirest.get("http://localhost:3000/products")
	products = response.body
	puts JSON.pretty_generate(products)

elsif input == "1.5"
	puts "What is the name of the product that you are searching for?"
	search_term = gets.chomp
	puts "Here are the matching products: "
	response = Unirest.get("http://localhost:3000/products?search=#{search_term}")
	products = response.body
	puts JSON.pretty_generate(products)

elsif input == "5"
	puts "Enter the id of the product to destroy forver: "
	input_id = gets.chomp
	response = Unirest.delete("http://localhost:3000/products/#{input_id}")
	puts JSON.pretty_generate(response.body)

elsif input == "6"

elsif input =="7"
	order_params = {}
	puts "Enter the product you would like to add 
	to the order"
	order_params[:product_id] = gets.chomp

	puts "Enter the quantity: "
	order_params[:quantity] = gets.chomp

elsif input == "8"
	puts "Please enter the category ID: "
	input_id = gets.chomp
	response = Unirest.get("http://localhost:3000/categories/#{input_id}")
	products = response.body
	puts JSON.pretty_generate(products)

elsif input == "9"
	cart_params = {}
	puts "Enter the product that you would like
	to add to your cart: "
	cart_params[:product_id] = gets.chomp
	puts "Enter the quantity that you would like to 
	add to your cart: "
	cart_params[:quantity] = gets.chomp
	response = Unirest.post("http://localhost:3000/carted_products", 
		parameters: cart_params)
	cart_data = response.body
	puts JSON.pretty_generate(cart_data)

    
	
	





















		

end