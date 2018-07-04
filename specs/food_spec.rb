require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')

class TestCustomer < MiniTest::Test

  def setup
    @chips = Food.new("chips", 2.0, -0.1)
  end

  def test_get_name
    actual = @chips.name
    assert_equal("chips", actual)
  end

  def test_get_price
    actual = @chips.price
    assert_equal(2.0, actual)
  end

  def test_get_alcohol_level
    actual = @chips.alcohol_level
    assert_equal(-0.1, actual)
  end










end
