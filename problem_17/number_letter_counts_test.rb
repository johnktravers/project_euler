require 'minitest/autorun'
require 'minitest/pride'

class NumberLetterCountsTest < Minitest::Test
  def number_letter_count(max_num)

  end

  def number_to_words(num)
    digs = num.to_s
    tens = digs[-2..-1].to_i
    str = ''

    str += "#{ONES[digs[-4].to_i]} thousand " if digs[-4] && digs[-4] != '0'
    str += "#{ONES[digs[-3].to_i]} hundred "  if digs[-3] && digs[-3] != '0'

    if tens > 0 && tens < 10
      str += ONES[tens]
    elsif (tens >= 10 && tens <= 20) || (tens >= 20 && tens % 10 == 0)
      str += TENS[tens]
    elsif tens > 0
      str += "#{TENS[tens.floor(-1)]}-#{ONES[tens % 10]}"
    end

    str.strip
  end

  #----------------- Tests -----------------#

  def test_number_letter_count
    # assert_equal 19, number_letter_count(5)
  end

  def test_number_to_words
    assert_equal 'one thousand',             number_to_words(1000)
    assert_equal 'one thousand thirty-four', number_to_words(1034)
    assert_equal 'one hundred sixty',        number_to_words(160)
    assert_equal 'five hundred seventy-two', number_to_words(572)
    assert_equal 'twelve',                   number_to_words(12)
    assert_equal 'eight hundred two',        number_to_words(802)
  end

  #----------------- Constants -----------------#

  ONES = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine'
  }

  TENS = {
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'fourty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eightty',
    90 => 'ninety'
  }
end
