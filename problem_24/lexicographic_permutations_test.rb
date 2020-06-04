require 'minitest/test'
require 'minitest/autorun'

class LexicographicPermutationsTest < Minitest::Test
  def lexicographic_permutations(digits)

  end

  #----------------- Tests -----------------#

  def test_lexicographic_permutations
    expected = [012, 021, 102, 120, 201, 210]
    assert_equal expected, lexicographic_permutations([0, 1, 2])
  end
end
