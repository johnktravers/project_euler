require 'minitest/test'
require 'minitest/autorun'

class AmicableNumbersTest < Minitest::Test
  def amicable_number_sum(max_num)
    amicables = []

    (1..max_num).each do |a|
      b = divisor_sum(a)
      amicables.push(a, b) if a != b && a == divisor_sum(b)
    end

    amicables.uniq.sum
  end

  def divisor_sum(num)
    (1..(num/2)).find_all { |i| num % i == 0 }.sum
  end

  #----------------- Tests -----------------#

  def test_amicable_number_sum
    assert_equal 504,   amicable_number_sum(1000)
    assert_equal 31626, amicable_number_sum(10000)
  end

  def test_divisor_sum
    assert_equal 284, divisor_sum(220)
    assert_equal 220, divisor_sum(284)
  end
end
