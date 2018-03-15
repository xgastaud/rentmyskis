# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Product.destroy_all
User.destroy_all

xavier = User.new(email: "xgastaud@gmail.com", password: "azerty", username: "xgastaud")
xavier.save

emile = User.new(email: "emilesautet@gmail.com", password: "azerty", username: "emilesautet")
emile.save

product1 = Product.new(title: "skis salomon 175 xavier", category: "Skis", price_per_day: 36, address: "Tignes", description: "Ressemelés en février 2018")
product1.user = xavier
product1.save

product2 = Product.new(title: "Snowboard rossignol 150 emile", category: "Snowboard", price_per_day: 41, address: "Chamonix", description: "Carres affutées récemment")
product2.user = emile
product2.save

# product3 = Product.new(title: "Snowboard oxbow 120", category: "Snowboard", price_per_day: 23, address: "Chamonix", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product3.user = emile
# product3.save

# product4 = Product.new(title: "Surf quicksilver 100", category: "Snowboard", price_per_day: 27, address: "Les Arcs", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product4.user = emile
# product4.save

# product5 = Product.new(title: "Skis Rossignol enfant", category: "Skis", price_per_day: 40, address: "Valmorel", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product5.user = emile
# product5.save

# product6 = Product.new(title: "SQurf Head 130", category: "Snowboard", price_per_day: 10, address: "Argentiere", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product6.user = emile
# product6.save
