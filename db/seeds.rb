# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# puts "Cleaning database"
# Ingredient.destroy_all

# puts "Creating ingredients"
#  10.times do
#   my_ingredients = Ingredient.new(
#     name: Faker::Beer.malts
#     )
#   my_ingredients.save!
# end

# puts "Done!"


Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "simple syrup")

