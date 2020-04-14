require 'minitest/autorun'
require 'minitest/pride'

class TriangularNumberTest < Minitest::Test
  def divisible_triangular_number(num_divisors)

  end

  #----------------- Tests -----------------#

  def test_divisible_triangular_number
    assert_equal 28, divisible_triangular_number(5)
  end
end
