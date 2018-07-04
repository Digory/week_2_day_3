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












end
