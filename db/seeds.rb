# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all


jeff_in_general = Category.create(name: "Jeff in General", description: "All about Jeff")
jeff_characters = Category.create(name: "Jeff Characters", description: "On characters portrayed by Jeff")
jeff_sightings = Category.create(name: "Jeff Sightings", description: "Have you seen Jeff?")
piano_jeff = Category.create(name: "Piano Jeff", description: "On the song and dance of Jeff")
chef_goldblum = Category.create(name: "Chef Goldblum", description: "Cuisine inspired by Jeff")
jeff_fiction = Category.create(name: "Jeff Fiction", description: "Fan Fiction, Lead Role: Jeff Goldblum")
jeffisms = Category.create(name: "Jeffisms", description: "Uhs, oohs, ums, ahs, and favorite quotes by Jeff")
dr_ian_malcolm = Category.create(name: "Dr. Ian Malcolm", description: '"That\'s, that\'s chaos theory."')
brundlefly = Category.create(name: "Brundlefly", description: '"Help me. Help me be human."')


puts "Jeffified"