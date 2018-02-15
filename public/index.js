/*global axios */


var productTemplate = document.querySelector("#product-card");
var productRow = document.querySelector(".row");

axios.get("https://sheltered-inlet-92907.herokuapp.com/").then(function(response) {
	var products = response.data; //array or product data
	console.log(response.data);


	product.forEach(function(product) {
		var productCard = productTemplate.content.cloneNode(true);
		productCard.querySelector(".product-title").innerText = product.title;
		productCard.querySelector("product-img-top").src = product.image;
		productCard.querySelector("product-text price").innerText = product.price;
		productCard.querySelector("product-text description").innerText = product.description;
		productRow.appendChild(productCard);
	})
})