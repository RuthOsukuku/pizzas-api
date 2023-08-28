# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear existing data
RestaurantPizza.destroy_all
Pizza.destroy_all
Restaurant.destroy_all

# Seed Restaurants
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Seed Pizzas
pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# Seed RestaurantPizzas (relationships)
RestaurantPizza.create(price: 10.99, restaurant: restaurant1, pizza: pizza1)
RestaurantPizza.create(price: 12.99, restaurant: restaurant1, pizza: pizza2)
RestaurantPizza.create(price: 9.99, restaurant: restaurant2, pizza: pizza1)
