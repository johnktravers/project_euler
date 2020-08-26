require 'minitest/autorun'
require 'minitest/pride'

class DigitFifthPowersTest < Minitest::Test
  def digit_power_sum(power)
    sum = 0
    range = 10..(10 ** (power + 1))

    range.each do |num|
      digits = num.to_s.chars.map { |dig| dig.to_i }
      local_sum = digits.sum { |dig| dig ** power}
      sum += local_sum if local_sum == num
    end

    sum
  end

  #----------------- Tests -----------------#

  def test_digit_power_sum
    assert_equal 19316,  digit_power_sum(4)
    assert_equal 443839, digit_power_sum(5)
  end
end
