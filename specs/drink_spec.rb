require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 3.50, 0.04)
  end

  def test_get_name
    actual = @drink.name
    assert_equal("Beer", actual)
  end

  def test_get_price
    actual = @drink.price
    assert_equal(3.50, actual)
  end

  def test_get_alcohol_level
    actual = @drink.alcohol_level
    assert_equal(0.04, actual)
  end






end
