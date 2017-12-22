class RecipeIngredient

  attr_reader :recipe, :ingredient
  attr_accessor :rating, :date

  @@all = []

  def initialize(recipe, ingredient, rating=nil, date=nil)
    @recipe = recipe
    @ingredient = ingredient
    @rating = rating
    @date ||= Time.now
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.create(recipe, ingredient, rating=nil)
    date = Time.now
    new_recipe_ingredient = RecipeIngredient.new(recipe, ingredient, rating, date)
    new_recipe_ingredient.save
  end

end
