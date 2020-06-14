require 'minitest/test'
require 'minitest/autorun'

class XDigitFibonacciTest < Minitest::Test
  def x_digit_fibonacci(x)

  end

  def fibonacci_index(num)

  end

  #----------------- Tests -----------------#

  def test_x_digit_fibonacci
    assert_equal 144, x_digit_fibonacci(3)
  end

  def test_fibonacci_index
    assert_equal 3,  fibonacci_index(2)
    assert_equal 9,  fibonacci_index(34)
    assert_equal 12, fibonacci_index(144)
  end
end
