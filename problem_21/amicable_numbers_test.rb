require 'minitest/test'
require 'minitest/autorun'

class AmicableNumbersTest < Minitest::Test
  def amicable_number_sum(max_num)

  end

  def amicable_pair(n_1, n_2)
    n_1 != n_2 && divisor_sum(n_1) == n_2 && divisor_sum(n_2) == n_1
  end

  def divisor_sum(num)
    (1..(num/2)).find_all { |i| num % i == 0 }.sum
  end

  #----------------- Tests -----------------#

  def test_amicable_number_sum
    # assert_equal 23, amicable_number_sum(100)
  end

  def test_amicable_numbers
    assert_equal true,  amicable_pair(220, 284)
    assert_equal false, amicable_pair(100, 100)
  end

  def test_divisor_sum
    assert_equal 284, divisor_sum(220)
    assert_equal 220, divisor_sum(284)
  end
end
