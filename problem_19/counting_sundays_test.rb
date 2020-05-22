require 'minitest/autorun'
require 'minitest/pride'

class CountingSundaysTest < Minitest::Test
  def first_month_sundays(start_year, end_year)

  end

  def first_sunday(year)
    day = 7
    leap_count = 0
    non_leap_count = 0

    (1900..(year - 1)).each do |yr|
      if leap_year?(yr)
        leap_count += 1
      else
        non_leap_count += 1
      end

      day += 7 until day > ((366 * leap_count) + (365 * non_leap_count))
    end

    day % ((366 * leap_count) + (365 * non_leap_count))
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

  def test_first_sunday
    assert_equal 6, first_sunday(1901)
    assert_equal 5, first_sunday(1902)
    assert_equal 3, first_sunday(2010)
    assert_equal 5, first_sunday(2020)
  end

  def test_leap_year
    assert_equal true,  leap_year?(1992)
    assert_equal true,  leap_year?(2400)
    assert_equal false, leap_year?(1900)
    assert_equal false, leap_year?(1997)
  end
end
