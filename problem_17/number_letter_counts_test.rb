require 'minitest/autorun'
require 'minitest/pride'

class NumberLetterCountsTest < Minitest::Test
  def number_letter_count(max_num)
    str = ''
    (1..max_num).each { |num| str += number_to_words(num) }

    str.gsub(/\W+/, '').length
  end

  def number_to_words(num)
    digs = num.to_s
    tens = digs[-2..-1].to_i
    ones = digs[-1].to_i
    str = ''

    str += "#{ONES[digs[-4].to_i]} thousand " if digs[-4] && digs[-4] != '0'
    str += "#{ONES[digs[-3].to_i]} hundred "  if digs[-3] && digs[-3] != '0'
    str += 'and ' if str.include?('hundred') && tens > 0

    if tens < 10 && ones > 0
      str += ONES[ones]
    elsif (tens >= 10 && tens <= 20) || (tens >= 20 && tens % 10 == 0)
      str += TENS[tens]
    elsif tens > 0
      str += "#{TENS[tens.floor(-1)]}-#{ONES[tens % 10]}"
    end

    str.strip
  end

  #----------------- Tests -----------------#

  def test_number_letter_count
    assert_equal 19,    number_letter_count(5)
    assert_equal 9769,  number_letter_count(500)
    assert_equal 21124, number_letter_count(1000)
  end

  def test_number_to_words
    assert_equal 'one thousand',                 number_to_words(1000)
    assert_equal 'one thousand thirty-four',     number_to_words(1034)
    assert_equal 'one hundred and sixty',        number_to_words(160)
    assert_equal 'five hundred and seventy-two', number_to_words(572)
    assert_equal 'twelve',                       number_to_words(12)
    assert_equal 'eight hundred and two',        number_to_words(802)
    assert_equal 'four',                         number_to_words(4)
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
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
  }
end
