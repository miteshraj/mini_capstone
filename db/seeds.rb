# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

soap = Product.new(title: "Soap", price: "3.99", image_url: "https://img.makeupalley.com/0/4/5/7/2282391.JPG", 
	description: "A fancy bar of Dove soap") 

cheetos = Product.new(title: "Hot Cheeto Fries", price: "1.99", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=&url=http%3A%2F%2Forigin-www.fritolay.com%2Fimages%2Fdefault-source%2Fblue-bag-image%2Fchesters-fries-flamin-hot.png%3Fsfvrsn%3D3c5f573a_4&psig=AOvVaw3VLHUZPb-J5teT5V_Nvdj-&ust=1516247700876505"
	description: "Hottest Cheetos ever.....")

sponge = Product.new(title: "Yellow Sponge", price: "999.00", image_url: "http://4.bp.blogspot.com/_x2M_h1XfLHE/SwWdg6BZgJI/AAAAAAAAAs4/8qugxsnCc4M/s1600/DSCF0853_p.jpg"
	description: "Almost as cool as the real thing but not really")

