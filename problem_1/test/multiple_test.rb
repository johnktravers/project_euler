require('minitest/autorun')
require('minitest/pride')
require('./lib/multiple')

class MultipleTest < Minitest::Test
  attr_reader :multiple

  def setup
    @multiple = Multiple.new
  end

  def test_it_exists
    assert_instance_of Multiple, multiple
  end

  def test_multiples_of_3_and_5
    assert_equal 23, multiple.multiples_of_3_and_5(10)
    assert_equal 2318, multiple.multiples_of_3_and_5(100)
    assert_equal 233168, multiple.multiples_of_3_and_5(1000)
  end
end
