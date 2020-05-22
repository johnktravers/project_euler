require 'minitest/autorun'
require 'minitest/pride'

class CountingSundaysTest < Minitest::Test
  def first_month_sundays(start_year, end_year)
    count = 0

    (start_year..end_year).each do |year|
      day = first_sunday(year)
      until day > 336
        if leap_year?(year)
          count += 1 if LEAP_FIRSTS_OF_THE_MONTH.include?(day)
        else
          count += 1 if NON_LEAP_FIRSTS_OF_THE_MONTH.include?(day)
        end
        day += 7
      end
    end

    count
  end

  def first_sunday(year)
    day = 7
    total_days = 0
    leap_count = 0
    non_leap_count = 0

    (1900..(year - 1)).each do |yr|
      if leap_year?(yr)
        leap_count += 1
      else
        non_leap_count += 1
      end

      total_days = (366 * leap_count) + (365 * non_leap_count)
      day += 7 until day > total_days
    end

    day - total_days
  end

  def leap_year?(year)
    if year % 100 != 0
      year % 4 == 0
    else
      year % 400 == 0
    end
  end

  #----------------- Tests -----------------#

  def test_first_month_sundays
    assert_equal 3,   first_month_sundays(1901, 1902)
    assert_equal 171, first_month_sundays(1901, 2000)
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

  #----------------- Constants -----------------#

  NON_LEAP_FIRSTS_OF_THE_MONTH = [1, 32, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]
  LEAP_FIRSTS_OF_THE_MONTH =     [1, 32, 61, 92, 122, 153, 183, 214, 245, 275, 306, 336]
end
