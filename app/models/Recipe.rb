class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    new_recipe = Recipe.new(name)
    new_recipe.save
  end

  def ingredients
    all_recipe_ingredients = RecipeIngredient.all
    relevant_recipe_ingredients = all_recipe_ingredients.select {|rec_ingr| rec_ingr.recipe == self }
    relevant_recipe_ingredients.map { |rec_ingr| rec_ingr.ingredient }
  end

  def add_ingredients(arr_of_ingredients)
    arr_of_ingredients.each do |ingredient|
      RecipeIngredient.create(self, ingredient)
    end
    self.ingredients
  end

end
