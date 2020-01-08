class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name = '')
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def total_calories
    total = 0
    @ingredients_required.each { |k, v| total += k.calories * v }
    total
  end
end
