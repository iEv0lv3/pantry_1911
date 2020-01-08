class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    the_recipes = [{
      name: '',
      details: { ingredients: [{ ingredient: '', amount: '' }], total_calories: 0 },
    }]

    @recipes.reduce(Hash.new(0)) do |hash, recipe|
      hash[:name] = recipe.name
      hash
    end
  end
end
