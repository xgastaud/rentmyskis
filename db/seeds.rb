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

users = []

user = User.new(email: "xgastaud@gmail.com", password: "azerty", username: "xgastaud")
user.save

user = User.new(email: "emilesautet@gmail.com", password: "azerty", username: "emilesautet")
user.save
users << user

user = User.new(email: "baptiste.chebassier28@gmail.com", password: "azerty", username: "Giantbapt")
user.save
users << user

user = User.new(email: "come.mellerio@free.fr", password: "azerty", username: "comeller")
user.save
users << user

brands = ["Salomon", "Rossignol", "Atomic", "Head", "Quicksilver", "Oxbow", "Völkl"]
category = ["Skis", "Snowboard"]
address = ["Val d'Isère", "Valmorel", "Tignes", "Chamonix", "Les Houches", "Megève", "La Clusaz", "Avoriaz", "Courchevel", "Meribel", "Les Arcs", "L'Alpe d'Huez", "Argentière", "Le Grand Bornand", "Courmayeur", "Val Thorens", "La Plagne", "Les deux Alpes", "Les Ménuires", "Serre Chevalier", "Isola 2000"]
object = ["Helmet", "Mask", "Jacket", "Ski Boots", "Backpack"]

100.times do |product|
  mycategory = category.sample
  product = Product.new(title: "#{mycategory} #{brands.sample} #{rand(20) * 5 + 100} cm", price_per_day: "#{rand(40) + 20}", category: "#{mycategory}", address: "#{address.sample}", description: "#{Faker::TheFreshPrinceOfBelAir.quote}")
  product.user = users.sample
  product.save
  puts "Saving #{product.title}"
end

25.times do |product|
  mycategory = category.sample
  product = Product.new(title: "#{object.sample} #{brands.sample}", price_per_day: "#{rand(40) + 5}", category: "Other", address: "#{address.sample}", description: "#{Faker::TheFreshPrinceOfBelAir.quote}")
  product.user = users.sample
  product.save
  puts "Saving #{product.title}"
end


product1 = Product.new(title: "skis salomon 175", category: "Skis", price_per_day: 36, address: "Tignes", description: "Ressemelés en février 2018")
product1.user = xavier
product1.save

# product2 = Product.new(title: "Snowboard rossignol 150", category: "Snowboard", price_per_day: 41, address: "Chamonix", description: "Carres affutées récemment")
# product2.user = emile
# product2.save

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
