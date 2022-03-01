# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product1 = Product.create(code: "mug", name: "Reedsy Mug", price: 7.30)
product2 = Product.create(code: "t-shirt", name: "Reedsy T-shirt", price: 14)

ProductShoppingCart.create(quantity: 4, product_id: product1.id, shopping_cart_id: 1)
ProductShoppingCart.create(quantity: 6, product_id: product2.id, shopping_cart_id: 2)
