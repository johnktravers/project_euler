require 'minitest/autorun'
require 'minitest/pride'

class CountingSundaysTest < Minitest::Test
  def first_month_sundays(start_year, end_year)

  end

  def leap_year?(year)
    if year % 100 != 0
      year % 4 == 0
    else
      year % 400 == 0
    end
  end

  #----------------- Tests -----------------#

  def test_power_digit_sum
    assert_equal 26, first_month_sundays(1901, 2000)
  end

  def test_leap_year
    assert_equal true,  leap_year?(1992)
    assert_equal true,  leap_year?(2400)
    assert_equal false, leap_year?(1900)
    assert_equal false, leap_year?(1997)
  end
end
