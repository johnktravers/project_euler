require 'minitest/test'
require 'minitest/autorun'

class NonabundantSumsTest < Minitest::Test
  def nonabundant_sums(max_num)

  end

  #----------------- Tests -----------------#

  def test_nonabundant_sums
    assert_equal 504,   nonabundant_sums(1000)
    assert_equal 31626, nonabundant_sums(10000)
  end
end
