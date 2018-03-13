# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xavier = User.new(email: "xgastaud@gmail.com", password: "azerty", username: "xgastaud")
xavier.save

product1 = Product.new(title: "skis salomon 175", category: "skis", price_per_day: 35.3, location: "Tignes", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product1.user = xavier
product1.save

product2 = Product.new(title: "skis rossignol 185", category: "skis", price_per_day: 41, location: "Val d'Isère", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product2.user = xavier
product2.save

product3 = Product.new(title: "surf oxbow 120", category: "surf", price_per_day: 23, location: "Chamonix", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product3.user = xavier
product3.save
