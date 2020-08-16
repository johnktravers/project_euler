require 'minitest/autorun'
require 'minitest/pride'

class DistinctPowersTest < Minitest::Test
  def distinct_power_count(min, max)
    unique_powers = []
    range = min..max

    range.each do |base|
      range.each do |power|
        num = base ** power
        unique_powers.push(num) if !unique_powers.include?(num)
      end
    end

    unique_powers.length
  end

  #----------------- Tests -----------------#

  def test_distinct_power_count
    assert_equal 8,    distinct_power_count(2, 4)
    assert_equal 15,   distinct_power_count(2, 5)
    assert_equal 9183, distinct_power_count(2, 100)
  end
end
