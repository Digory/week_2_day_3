require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Gemma", 25, 100.0)
  end

  def test_get_name
    result = @customer1.name
    assert_equal("Gemma", result)
  end

  def test_get_age
    result = @customer1.age
    assert_equal(25, result)
  end

  def test_get_wallet
    result = @customer1.wallet
    assert_equal(100.0, result)
  end

  def test_get_drunkeness_level
    result = @customer1.drunkeness_level
    assert_equal(0, result)
  end

end
