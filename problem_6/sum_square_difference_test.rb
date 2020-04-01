require 'minitest/autorun'
require 'minitest/pride'

class SumSquareDifferenceTest < Minitest::Test
  def sum_square_difference(max)
    range = (1..max).to_a

    square_of_sums = range.sum ** 2

    sum_of_squares = 0
    range.each { |num| sum_of_squares += num ** 2 }

    square_of_sums - sum_of_squares
  end

  def test_sum_square_difference
    assert_equal 2640, sum_square_difference(10)
    assert_equal 25164150, sum_square_difference(100)
    assert_equal 250166416500, sum_square_difference(1000)
  end
end
