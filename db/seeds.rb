# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

burger = MenuItem.create(
  name: "hamburger", 
  price: 5
  )

sandwich = MenuItem.create (
  name: "club sandwich", 
  price: 4
  )

bacon = Ingredient.create(
  name: "bacon"
  )

beef = Ingredient.create(
  name: "grass-fed beef"
  )

bread = Ingredient.create(
  name: "really good bread"
  )

chicken = Ingredient.create(
  name: "chicken"
  )


# hamburger.recipe.ingredients = beef
# hamburger.recipe.ingredients = bacon
# sandwich.recipe.ingredients = bacon
# sandwich.recipe.ingredients = bread
# sandwich.recipe.ingredients = chicken
