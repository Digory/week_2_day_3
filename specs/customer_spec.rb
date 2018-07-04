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

end
