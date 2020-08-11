require 'minitest/autorun'
require 'minitest/pride'

class NumberSpiralDiagonalsTest < Minitest::Test
  def diagonal_number_sum(side_length)
    sum = 0
    current_length = 1

    until current_length > side_length
      sum += corner_sum(current_length)
      current_length += 2
    end

    sum
  end

  def corner_sum(sqrt_num)
    square = sqrt_num ** 2
    sum = square
    return sum if sqrt_num <= 1 || sqrt_num.even?

    3.times { |i| sum += square - (sqrt_num - 1) * (i + 1) }
    sum
  end

  #----------------- Tests -----------------#

  def test_diagonal_number_sum
    assert_equal 1,         diagonal_number_sum(1)
    assert_equal 25,        diagonal_number_sum(3)
    assert_equal 101,       diagonal_number_sum(5)
    assert_equal 261,       diagonal_number_sum(7)
    assert_equal 537,       diagonal_number_sum(9)
    assert_equal 669171001, diagonal_number_sum(1001)
  end

  def test_corner_sum
    assert_equal 1,   corner_sum(1)
    assert_equal 24,  corner_sum(3)
    assert_equal 76,  corner_sum(5)
    assert_equal 160, corner_sum(7)
    assert_equal 276, corner_sum(9)
  end
end
