class Ingredient
  attr_reader :name, :unit, :calories

  def initialize(name = '', unit = '', calories = 0)
    @name = name
    @unit = unit
    @calories = calories
  end
end
