# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xavier = User.new(email: "xgastaud@gmail.com", password: "azerty", username: "xgastaud")
xavier.save

emile = User.new(email: "emilesautet@gmail.com", password: "azerty", username: "emilesautet")
emile.save

product1 = Product.new(title: "skis salomon 175", category: "Skis", price_per_day: 35.3, location: "Tignes", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product1.user = xavier
product1.save

product2 = Product.new(title: "skis rossignol 185", category: "Skis", price_per_day: 41, location: "Val d'Isère", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product2.user = emile
product2.save

product3 = Product.new(title: "surf oxbow 120", category: "Snowboard", price_per_day: 23, location: "Chamonix", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product3.user = emile
product3.save

product4 = Product.new(title: "surf quicksilver 100", category: "Snowboard", price_per_day: 27, location: "Les Arcs", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product4.user = xavier
product4.save

product5 = Product.new(title: "surf Rossignol enfant", category: "Snowboard", price_per_day: 40, location: "Valmorel", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product5.user = emile
product5.save

product6 = Product.new(title: "surf Head 130", category: "Other", price_per_day: 10, location: "Argentiere", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
product6.user = xavier
product6.save
