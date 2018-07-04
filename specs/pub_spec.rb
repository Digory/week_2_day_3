require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("The dog and lemon")
  end


  def test_get_name
    actual = @pub.name
    assert_equal("The dog and lemon", actual)
  end

  def test_get_till
    actual = @pub.till
    assert_equal(1000.0, actual)
  end

  def test_get_drinks
    actual = @pub.drinks.length()
    assert_equal(3, actual)
  end












end
