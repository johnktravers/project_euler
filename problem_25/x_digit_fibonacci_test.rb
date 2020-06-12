require 'minitest/test'
require 'minitest/autorun'

class XDigitFibonacciTest < Minitest::Test
  def x_digit_fibonacci(x)
    
  end

  #----------------- Tests -----------------#

  def test_x_digit_fibonacci
    assert_equal 144, x_digit_fibonacci(3)
  end
end
