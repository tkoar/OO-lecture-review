class Ingredient

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
    new_ingredient = Ingredient.new(name)
    new_ingredient.save
  end

  def recipes
    all_recipe_ingredients = RecipeIngredient.all
    relevant_recipe_ingredients = all_recipe_ingredients.select {|rec_ingr| rec_ingr.ingredient == self}
    relevant_recipe_ingredients.map { |rec_ingr| rec_ingr.recipe }
  end

end
