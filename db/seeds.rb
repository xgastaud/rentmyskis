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

product1 = Product.new(title: "skis salomon 175 xavier", category: "skis", price_per_day: 36, address: "Tignes", description: "Ressemelés en février 2018")
product1.user = xavier
product1.save

product2 = Product.new(title: "skis rossignol 185 emile", category: "skis", price_per_day: 41, address: "Val d'Isère", description: "Carres affutées récemment")
product2.user = emile
product2.save

# product3 = Product.new(title: "surf oxbow 120", category: "surf", price_per_day: 23, address: "Chamonix", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product3.user = emile
# product3.save

# product4 = Product.new(title: "surf quicksilver 100", category: "surf", price_per_day: 27, address: "Les Arcs", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product4.user = emile
# product4.save

# product5 = Product.new(title: "surf Rossignol enfant", category: "surf", price_per_day: 40, address: "Valmorel", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product5.user = emile
# product5.save

# product6 = Product.new(title: "surf Head 130", category: "surf", price_per_day: 10, address: "Argentiere", description: "The best pair of skis ever!!!!!!!!!!!!!!!!")
# product6.user = emile
# product6.save
