require_relative '../config/environment.rb'

chicken_soup = Recipe.create("Chicken Soup")
mac_cheese = Recipe.create("Mac & Cheese")

chicken = Ingredient.create("Chicken")
kale = Ingredient.create("Kale")
noodles = Ingredient.create("Noodles")
bread_crums = Ingredient.create("Bread Crumbs")
carrots = Ingredient.create("carrots")
cheese = Ingredient.create("Cheese")

recipe_ingredient_chicky_soup = RecipeIngredient.create(chicken_soup, chicken)
chicken_soup.add_ingredients([kale, noodles, carrots])

mac_cheese_recipe_ingredient = RecipeIngredient.create(mac_cheese, noodles)
mac_cheese.add_ingredients([bread_crums, cheese])

binding.pry
