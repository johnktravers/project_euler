require 'minitest/autorun'
require 'minitest/pride'

class TriangularNumberTest < Minitest::Test
  def divisible_triangular_number(min_divisors)
    current_num = 1
    increment = 1

    until num_divisors(current_num) > min_divisors do
      increment += 1
      current_num = current_num + increment
    end

    current_num
  end

  def num_divisors(n)
    (1..(n / 2)).count { |i| n % i == 0 } + 1
  end

  #----------------- Tests -----------------#

  def test_divisible_triangular_number
    assert_equal 28, divisible_triangular_number(5)
    assert_equal 28, divisible_triangular_number(500)
  end

  def test_num_divisors
    assert_equal 1, num_divisors(1)
    assert_equal 2, num_divisors(5)
    assert_equal 4, num_divisors(10)
    assert_equal 6, num_divisors(28)
  end
end
