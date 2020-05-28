require 'minitest/test'
require 'minitest/autorun'

class AmicableNumbersTest < Minitest::Test
  def amicable_number_sum(max_num)


  end

  def divisor_sum(num)
    (1..(num/2)).find_all { |i| num % i == 0 }.sum
  end

  #----------------- Tests -----------------#

  def test_amicable_number_sum
    # assert_equal 23, amicable_number_sum(100)
  end

  def test_divisor_sum
    assert_equal 284, divisor_sum(220)
    assert_equal 220, divisor_sum(284)
  end
end
