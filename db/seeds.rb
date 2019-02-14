# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients = open(url).read
# p ingredients = JSON.parse(ingredients)['drinks']

# 5.times do
#   # ingredient = Ingredient.new
#   # ingredient.save!
# end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
