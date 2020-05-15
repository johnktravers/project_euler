require 'minitest/autorun'
require 'minitest/pride'

class PowerDigitSumTest < Minitest::Test
  def power_digit_sum(base, exp)
    num = (base ** exp).to_s
    sum = 0

    num.chars.each { |n| sum += n.to_i }

    sum
  end

  #----------------- Tests -----------------#

  def test_power_digit_sum
    assert_equal 26,    power_digit_sum(2, 15)
    assert_equal 18,    power_digit_sum(3, 6)
    assert_equal 1366,  power_digit_sum(2, 1000)
  end
end
