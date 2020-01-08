require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def test_ingredient_exists
    ingredient = Ingredient.new

    assert_instance_of Ingredient, ingredient
  end

  def test_ingredient_can_have_attributes
    ingredient = Ingredient.new('cheese', 'oz', 50)

    assert_equal 'cheese', ingredient.name
    assert_equal 'oz', ingredient.unit
    assert_equal 50, ingredient.calories
  end
end
