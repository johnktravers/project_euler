require 'minitest/autorun'
require 'minitest/pride'

class PandigitalProductsTest < Minitest::Test
  def pandigital(n, nums)
    pandigits = (1..n).to_a

    digits = nums.map do |num|
      num.to_s.chars.map { |dig| dig.to_i }
    end.flatten.sort

    digits == pandigits
  end

  #----------------- Tests -----------------#

  def test_pandigital
    assert_equal true,  pandigital(9, [39, 186, 7254])
    assert_equal false, pandigital(8, [39, 16, 7254])
  end
end
