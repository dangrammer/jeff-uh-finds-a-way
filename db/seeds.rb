# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all


jeff_in_general = Category.create(name: "Jeff in General", description: "All about Jeff")
jeff_characters = Category.create(name: "Jeff Characters", description: "Favorite characters portrayed by the legend himself")
jeff_sightings = Category.create(name: "Jeff Sightings", description: "Where have you seen Jeff?")
piano_jeff = Category.create(name: "Piano Jeff", description: "Everything on the song and dance of the man")
jeff_eats = Category.create(name: "Jeff Eats", description: "Food and meals inspired by the man")
jeff_fiction = Category.create(name: "Jeff Fiction", description: "Fan Fiction: Lead Role Jeff Goldblum")

puts "Jeffified"