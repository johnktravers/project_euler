require 'minitest/test'
require 'minitest/autorun'

class FactorialDigitSumTest < Minitest::Test
  def factorial_digit_sum(n)
    str = factorial(n).to_s
    sum = 0

    str.chars.each { |num| sum += num.to_i }

    sum
  end

  def factorial(n)
    return 1 if n == 1
    n * factorial(n - 1)
  end

  #----------------- Tests -----------------#

  def test_factorial_digit_sum
    assert_equal 27,  factorial_digit_sum(10)
    assert_equal 648, factorial_digit_sum(100)
  end

  def test_factorial
    assert_equal 3628800, factorial(10)
    assert_equal 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000, factorial(100)
  end
end
