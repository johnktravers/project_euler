require 'minitest/test'
require 'minitest/autorun'

class XDigitFibonacciTest < Minitest::Test
  def x_digit_fibonacci(x)

  end

  def fibonacci_index(num)
    n1 = 1
    n2 = 1
    count = 3

    until n2 > num
      sum = n1 + n2
      n1 = n2
      n2 = sum
      return count if sum == num
      count += 1
    end
  end

  #----------------- Tests -----------------#

  def test_x_digit_fibonacci
    skip
    assert_equal 144, x_digit_fibonacci(3)
  end

  def test_fibonacci_index
    assert_equal 3,   fibonacci_index(2)
    assert_equal 9,   fibonacci_index(34)
    assert_equal 12,  fibonacci_index(144)
    assert_equal nil, fibonacci_index(224)
  end
end
