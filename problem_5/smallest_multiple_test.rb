require 'minitest/pride'
require 'minitest/autorun'

class SmallestMultipleTest < Minitest::Test
  def smallest_multiple(max)
    range = (2..max - 1)
    num = max

    loop do
      divisible = true
      range.each { |i| break divisible = false if num % i != 0 }
      return num if divisible
      num += max
    end
  end

  def test_smallest_multiple
    assert_equal 2520, smallest_multiple(10)
    assert_equal 360360, smallest_multiple(15)
    assert_equal 232792560, smallest_multiple(20)
  end
end
